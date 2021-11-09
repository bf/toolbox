#!/bin/bash
#SBATCH --job-name=hourly.2
#SBATCH --cpus-per-task 40
#SBATCH --mem 257500M
#SBATCH --nodes 1
#SBATCH --dependency=singleton
#SBATCH --time=02:20:00
#SBATCH --signal=B:SIGUSR1@90

# shellcheck disable=SC2034
JOB_PERIOD=3600
# shellcheck disable=SC2034
JOB_OFFSET=0

export CAUR_PARALLEL=10

# shellcheck source=/dev/null
source common.sh
