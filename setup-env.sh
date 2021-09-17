#!/bin/bash

echo
read -p "Enter an experiments directory [~/.experiments]: " EXPERIMENTS

[ -z "$EXPERIMENTS" ] && EXPERIMENTS="~/.experiments"

echo '' >> ~/.bashrc
echo '# slurm launcher (https://github.com/arjunmajum/slurm-launcher)' >> ~/.bashrc
echo 'export SLURM_LAUNCHER_ROOT='$EXPERIMENTS >> ~/.bashrc
echo 'export PATH=$PATH:'$(pwd) >> ~/.bashrc
echo '' >> ~/.bashrc

source ~/.bashrc
