#!/bin/bash

#SBATCH --job-name=AbrilGiorgio
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --output=job.out
#SBATCH --error=stdout.txt

module load singularity
export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

singularity exec --bind $TMPDIR:$TMPDIR container.sif bash -c "export OMPI_MCA_tmpdir_base=$TMPDIR && mpirun -np 2 /prj/main"


