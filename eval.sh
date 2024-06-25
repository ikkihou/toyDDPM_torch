#!/bin/bash

# Description: [Description of what the script does]
# This script runs a Python script with different beta schedules and a checkpoint path
# that includes a parameterized suffix.
#
# Author: [Your Name]
# Date: [Date Created]
# Usage: ./script_name.sh <checkpoint_index>
# Example: ./script_name.sh 500

# ----------------------------------------
# Script Start
# ----------------------------------------

# Check if an argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <checkpoint_index>"
    exit 1
fi

# Read the checkpoint index from the first command line argument
CHKPT_INDEX=$1

# Use the provided checkpoint index in the loop
for i in {linear,quad,stairs,arch}; do
    python eval.py --sample-folder images/eval/cifar10/cifar10_arch_3_${CHKPT_INDEX}_ddim_"$i"_3
done

# ----------------------------------------
# Script End
# ----------------------------------------
