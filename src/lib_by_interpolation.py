import re
import os
from collections import OrderedDict
from difflib import SequenceMatcher
from src import project_dir


def oneD_linear_interpolation(desired_x, known):
    """
    utility function that performs 1D linear interpolation with a known energy value
    :param desired_x: integer value of the desired attribute/argument
    :param known: list of dictionary [{x: <value_x>, y: <value_y>}]

    :return value with desired attribute/argument
    """
    assert len(known) == 2, "Only two known values are supported"

    # assume E = ax + c where x is a hardware attribute
    ordered_list = []
    if known[1]['x'] < known[0]['x']:
        ordered_list.append(known[1])
        ordered_list.append(known[0])
    else:
        ordered_list = known

    slope = (known[1]['y'] - known[0]['y']) / (known[1]['x'] - known[0]['x'])
    desired_y = slope * (desired_x - ordered_list[0]['x']) + ordered_list[0]['y']
    return desired_y


def print_nested_dict(d, indent=0):
    for key, value in d.items():
        if isinstance(value, dict):
            print(' ' * indent + f'{key}:')
            print_nested_dict(value, indent + 4)
        else:
            print(' ' * indent + f'{key}: {value}')


def find_similar_key(key, key_list, similarity_threshold=0.7):
    """Find the most similar key from key_list using Levenshtein distance (or similar metric)."""
    highest_similarity = 0.0
    most_similar_key = None
    for candidate in key_list:
        similarity = SequenceMatcher(None, key, candidate).ratio()
        if similarity > highest_similarity and similarity > similarity_threshold:
            highest_similarity = similarity
            most_similar_key = candidate
    return most_similar_key, highest_similarity


def merge_dicts(original, new_entry):
    """Merge new_entry into original, handling lists if necessary."""
    if isinstance(original, list):
        if isinstance(new_entry, list):
            original.extend(new_entry)
        else:
            original.append(new_entry)
    elif isinstance(original, dict):
        for key, value in new_entry.items():
            if key in original:
                original[key] = merge_dicts(original[key], value)
            else:
                original[key] = value
    return original


def create_similar_key(key_list, key):
    """Create a new key that is similar to the existing keys in key_list."""
    i = 0
    while True:
        similar_key = f"{key}__{i}"
        if similar_key not in key_list:
            return similar_key
        i += 1
        if i > 1000:
            raise ValueError("Too many similar keys")


def clean_list_elements(elements):
    """Remove extra quotes from the first and last elements of a list."""
    if elements:
        elements = [element.strip('"') for element in elements]
    return elements


def compare_dicts(main_dict, secondary_dict, path=""):
    """Compare two nested dictionaries and find matching or similar entries at the same depth."""
    similarity_threshold = 0.0  # this guarantees that a key will be found, the one with the highest similarity
    matches = []
    for main_key, main_value in main_dict.items():

        key = main_key
        if key not in secondary_dict:
            key, _ = find_similar_key(key, secondary_dict.keys(), similarity_threshold)
            if not key:
                continue

        secondary_value = secondary_dict[key]
        if isinstance(main_value, dict) and isinstance(secondary_value, dict):
            sub_matches = compare_dicts(main_value, secondary_value, path + f"{key}/")
            matches.extend(sub_matches)
        elif main_value == secondary_value:
            matches.append((path + key, main_value, secondary_value))

    return matches


def merge_libraries(primary_dict, secondary_dict, combination_func):
    """
    Merge primary and secondary dictionaries, replacing the values in primary
    with the combination of primary and secondary values if a similar entry exists.
    :param primary_dict: The main dictionary to be written into a text file.
    :param secondary_dict: The secondary dictionary to be used for combining values.
    :param combination_func: A function that takes two values and returns the combination.
    :return: The merged text of the libraries.
    """    
    def find_similar_entry(path, key, secondary_dict):
        """
        Find a similar entry in the secondary dictionary at the same depth.
        Returns the corresponding value or None if no match is found.
        """
        current_dict = secondary_dict
        for p in path:
            if p in current_dict and isinstance(current_dict[p], dict):
                current_dict = current_dict[p]
            else:
                return None
        return current_dict.get(key, None)

    def process_dict(d, secondary_dict, depth=0, path=[]):
        """
        Recursively process the nested dictionary and build the text output.
        :param d: Dictionary to process.
        :param secondary_dict: Corresponding secondary dictionary at this depth.
        :param depth: Current depth for formatting indentation.
        :param path: Current path for tracking nested levels.
        :return: Merged string of text.
        """
        text = ''
        indent = '  ' * depth
        for key, value in d.items():
            secondary_value = find_similar_entry(path, key, secondary_dict)

            if isinstance(value, dict):
                # If the value is another dictionary, process recursively
                text += f"{indent}{key} {{\n"
                text += process_dict(value, secondary_value if secondary_value else {}, depth + 1, path + [key])
                text += f"{indent}}}\n"
            elif isinstance(value, list):
                # Handle lists as they are written as arguments or values
                if key.startswith('values'):
                    text += f"{indent}{key} (\n"
                    for v in value:
                        secondary_v = find_similar_entry(path, key, secondary_dict)
                        combined_value = combination_func(v, secondary_v)
                        text += f"{indent}  {combined_value},\n"
                    text += f"{indent});\n"
                else:
                    combined_value = [combination_func(v, secondary_value[i] if secondary_value and i < len(secondary_value) else None)
                                      for i, v in enumerate(value)]
                    args_str = ', '.join(combined_value)
                    text += f"{indent}{key} ({args_str});\n"
            else:
                # Handle simple key-value pairs
                combined_value = combination_func(value, secondary_value)
                text += f"{indent}{key} : {combined_value};\n"

        return text
    
    return process_dict(primary_dict, secondary_dict)


def parse_block(lines, start=0):
    """Parse a block of lines and return a nested dictionary."""
    data = OrderedDict()
    i = start
    while i < len(lines):
        line = lines[i].strip()

        # Check if the line indicates the start of a new block
        if line.endswith('{'):
            key = line[:-1].strip()
            sub_block, i = parse_block(lines, i + 1)
            if key in data:
                # If the key is already in the dictionary, create new similar entry
                similar_key = create_similar_key(list(data.keys()), key)
                data[similar_key] = sub_block
            else:
                data[key] = sub_block

        # Check if the line indicates the end of the current block
        elif line.endswith('}'):
            return data, i

        else:
            # Match simple key-value pairs
            match = re.match(r'(\w+)\s*:\s*(.+);', line)
            if match:
                key, value = match.groups()
                if key in data:
                    if isinstance(data[key], list):
                        data[key].append(value.strip().strip('"'))
                    else: # if the key is already in the dictionary but it only has one value
                        data[key] = [data[key], value.strip().strip('"')]
                else:  # if the key is not in the dictionary, insert is as a single value
                    data[key] = value.strip().strip('"')

            # Match elements like voltage_map(VDD, 0.7);
            else:
                match = re.match(r'(\w+)\s*\(([^)]+)\)\s*;', line)
                if match:
                    key, args = match.groups()
                    elements = clean_list_elements([arg.strip() for arg in args.split(',')])
                    if key in data:
                        assert isinstance(data[key], list), f"Key {key} already exists in the dictionary but not as a list"
                        if not isinstance(data[key][0], list):
                            data[key] = [data[key]]
                        data[key].append(elements)
                    else:
                        data[key] = elements

                # Handle multi-line parentheses like "values (...)" across multiple lines
                else:
                    multiline_match = re.match(r'(\w+)\s*\((.*)', line)
                    if multiline_match:
                        key, initial_content = multiline_match.groups()
                        content = initial_content.rstrip('\\')  # Remove any trailing backslash
                        i += 1

                        # Continue capturing lines until the closing parenthesis is found
                        while not lines[i].strip().endswith(');'):
                            content += ' ' + lines[i].strip().rstrip('\\')
                            i += 1

                        # Append the final line that contains the closing parenthesis
                        content += ' ' + lines[i].strip()[:-2].strip()  # Remove the closing ");"
                        
                        # Split content by commas and clean up extra quotes
                        content_values = [v.strip().strip('"') for v in content.split(',')]
                        data[key] = content_values

        i += 1

    return data, i


def parse_libfile(libfile):
    """Parse a .lib file and return a nested dictionary"""
    def remove_comments(text):
        """Remove C-style comments (/* ... */) from the text."""
        return re.sub(r'/\*.*?\*/', '', text, flags=re.DOTALL)

    with open(libfile, 'r') as f:
        text = f.read()
    # Remove comments from the content
    text_no_comments = remove_comments(text)
    # Split the content into lines for processing
    lines = text_no_comments.splitlines()
    # Parse the cleaned lines into a nested dictionary
    data, _ = parse_block(lines)
    return data


if __name__ == '__main__':
    master_lib_file = os.path.join(project_dir, 'libs', 'variability14', 'lib', 'Final_Lib_with_variation_lvf_LibFile.lib')
    slave_lib_file = os.path.join(project_dir, 'libs', 'asap7', 'lib', 'asap7_short.lib')
    output_lib_file = os.path.join(project_dir, 'libs', 'interp10', 'lib', 'interp10.lib')

    master_lib = parse_libfile(master_lib_file)
    master_lib['name'] = master_lib_file
    slave_lib = parse_libfile(slave_lib_file)
    slave_lib['name'] = slave_lib_file

    # matches = compare_dicts(master_lib, slave_lib)
    # for match in matches:
    #     print(match)


    def combination_func(primary_val, secondary_val):
        if secondary_val is None or \
            primary_val == secondary_val or \
            type(primary_val) != type(secondary_val):
            return primary_val
        
        desired_x = 10
        known = [{'x': 7, 'y': primary_val}, {'x': 14, 'y': secondary_val}]
        return oneD_linear_interpolation(desired_x, known)


    merged_lib = merge_libraries(master_lib, slave_lib, combination_func=combination_func)
    with open(output_lib_file, 'w') as f:
        f.write(merged_lib)
    print(f"Saved library to {output_lib_file}")
