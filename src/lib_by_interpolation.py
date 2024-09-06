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


def remove_comments(text):
    """Remove C-style comments (/* ... */) from the text."""
    return re.sub(r'/\*.*?\*/', '', text, flags=re.DOTALL)


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


def clean_list_elements(elements):
    """Remove extra quotes from the first and last elements of a list."""
    if elements:
        elements[0] = elements[0].strip('"')
        elements[-1] = elements[-1].strip('"')
    return elements

def parse_block(lines, start=0):
    data = OrderedDict()
    i = start
    while i < len(lines):
        line = lines[i].strip()
        
        # Check if the line indicates the start of a new block
        if line.endswith('{'):
            key = line[:-1].strip()
            sub_block, i = parse_block(lines, i + 1)
            if key in data:
                data[key] = merge_dicts(data[key], sub_block)
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
                    else:
                        data[key] = [data[key], value.strip().strip('"')]
                else:
                    data[key] = value.strip().strip('"')
            
            # Match elements like voltage_map(VDD, 0.7);
            else:
                match = re.match(r'(\w+)\s*\(([^)]+)\)\s*;', line)
                if match:
                    key, args = match.groups()
                    elements = clean_list_elements([arg.strip() for arg in args.split(',')])
                    if key in data:
                        if isinstance(data[key], list):
                            data[key].append(elements)
                        else:
                            data[key] = [data[key], elements]
                    else:
                        data[key] = elements
                
                # Match elements like lu_table_template (constraint_template_7x7) { ... }
                else:
                    match = re.match(r'(\w+)\s*\(([^)]+)\)\s*\{', line)
                    if match:
                        key, args = match.groups()
                        sub_block, i = parse_block(lines, i + 1)
                        elements = clean_list_elements([arg.strip() for arg in args.split(',')])
                        new_entry = {
                            "args": elements,
                            "content": sub_block
                        }
                        if key in data:
                            data[key] = merge_dicts(data[key], new_entry)
                        else:
                            data[key] = new_entry
                    # Match elements like input_voltage (default_VDD_VSS_input) { ... }
                    else:
                        match = re.match(r'(\w+)\s*\(([^)]+)\)', line)
                        if match:
                            key, args = match.groups()
                            elements = clean_list_elements([arg.strip() for arg in args.split(',')])
                            if key in data:
                                data[key].append(elements)
                            else:
                                data[key] = elements
        
        i += 1
    
    return data, i


def parse_libfile(libfile):
    """Parse a .lib file and return a nested dictionary
    """
    with open(libfile, 'r') as f:
        text = f.read()
    # Remove comments from the content
    text_no_comments = remove_comments(text)
    # Split the content into lines for processing
    lines = text_no_comments.splitlines()
    # Parse the cleaned lines into a nested dictionary
    data, _ = parse_block(lines)
    return data


def compare_dicts(main_dict, secondary_dict, path=""):
    """Compare two nested dictionaries and find matching or similar entries at the same depth."""
    matches = []
    for key, main_value in main_dict.items():
        if key in secondary_dict:
            secondary_value = secondary_dict[key]
            if isinstance(main_value, dict) and isinstance(secondary_value, dict):
                sub_matches = compare_dicts(main_value, secondary_value, path + f"{key}/")
                matches.extend(sub_matches)
            elif main_value == secondary_value:
                matches.append((path + key, main_value, secondary_value))
        else:
            similar_key = find_similar_key(key, secondary_dict.keys())
            if similar_key:
                secondary_value = secondary_dict[similar_key]
                if isinstance(main_value, dict) and isinstance(secondary_value, dict):
                    sub_matches = compare_dicts(main_value, secondary_value, path + f"{key}/")
                    matches.extend(sub_matches)
                elif main_value == secondary_value:
                    matches.append((path + f"{key} (similar to {similar_key})", main_value, secondary_value))
    return matches


def find_similar_key(key, key_list):
    """Find the most similar key from key_list using Levenshtein distance (or similar metric)."""
    highest_similarity = 0.0
    most_similar_key = None
    for candidate in key_list:
        similarity = SequenceMatcher(None, key, candidate).ratio()
        if similarity > highest_similarity and similarity > 0.7:  # threshold for similarity
            highest_similarity = similarity
            most_similar_key = candidate
    return most_similar_key


if __name__ == '__main__':
    master_lib_file = os.path.join(project_dir, 'libs', 'variability14', 'lib', 'Final_Lib_with_variation_lvf_LibFile.lib')
    slave_lib_file = os.path.join(project_dir, 'libs', 'asap7', 'libfiles', 'asap7_short.lib')

    master_lib = parse_libfile(master_lib_file)
    slave_lib = parse_libfile(slave_lib_file)

    matches = compare_dicts(master_lib, slave_lib)
    for match in matches:
        print(match)