#!/bin/bash

hostname
singularity exec my-python.sif hostname

cat /etc/os-release
singularity exec my-python.sif cat /etc/os-release

pwd
singularity exec my-python.sif pwd

ls -l
ls -l my-python.sif

python --version
singularity exec my-python.sif python --version

module load anaconda/2020.11

ipython /home/alumno20/Lab7/source/kmer-solution.ipynb
ipython /home/alumno20/Lab7/source/kmer-solution14.ipynb
ipython /home/alumno20/Lab7/source/pi-solution.ipynb

singularity exec my-python.sif ipython /home/kmer-solution.ipynb
singularity exec my-python.sif ipython /home/kmer-solution14.ipynb
singularity exec my-python.sif ipython /home/pi-solution.ipynb

module unload anaconda/2020.11
