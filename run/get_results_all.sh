#!/bin/bash
set -eou pipefail
maindir="$HOME/axcarbon"

# ./run/get_results.sh saved_logs/ga_fpmac16b7nm___2024.09.11-01.25.57.237/ asap7
# ./run/get_results.sh saved_logs/ga_fpmac16b14nm___2024.09.11-01.36.56.701/ variability14
./run/get_results.sh saved_logs/ga_fpmac32b7nm___2024.09.11-01.46.37.786/ asap7
./run/get_results.sh saved_logs/ga_fpmac32b14nm___2024.09.11-02.49.38.963/ variability14
