#!/bin/bash

#SBATCH -t 00:05:00
#SBATCH -N 1
#SBATCH -p gpu-short

# Copy dataset to scratch
mkdir -p "$TMPDIR"/CelebA
cp -r /nfs/managed_datasets/CelebA/CelebAHQ_tfrecord "$TMPDIR"/CelebA

# Go to workdir --> CHANGE THIS TO YOUR OWN HOME DIRECTORY <--
workdir=/home/tkuipers
cd $workdir

# Load environment CHANGE THIS TO YOUR LOCATION DIRECTORY
source install_environment/install_prog_gan_env.sh

# Run training
cd stylegan
python train.py