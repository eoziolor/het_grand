#!/bin/bash
#SBATCH --ntasks 20
#SBATCH --cpus-per-task 1

# "module" alone was an unrecognized command. very confusing, the parallel slurm script runs this before "module" though. so I'm trying it. 
source /etc/profile.d/modules.sh

module load samtools 

source ~/bin/parallel-slurm/parallel-slurm-setup.sh

$parallel samtools index ::: $(ls /scratch/nmr15102/heteroclitus_align/*bam)

