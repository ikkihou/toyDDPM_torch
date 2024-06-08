#!/bin/bash

# Description: [Description of what the script does]

# Author: [Your Name]

# Date: [Date Created]

# Usage: [Instructions on how to use the script]

# Example: [Example usage of the script]

# ----------------------------------------
# Script Start
# ----------------------------------------

for i in {linear,quad,stairs}; do python generate.py --beta-schedule $i --chkpt-path ./chkpts/cifar_quad/cifar_quad_500.pt --use-ddim --subseq-size 100 --suffix _ddim_$i; done

# ----------------------------------------
# Script End
# ----------------------------------------
