#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno20/Lab7
#SBATCH -J Blast
#SBATCH --cpus-per-task=1
#SBATCH --output=/home/alumno20/Lab7/salida.out
#SBATCH --error=/home/alumno20/Lab7/salida.out
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

module load singularity

singularity exec blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot


singularity exec blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

module unload singularity
