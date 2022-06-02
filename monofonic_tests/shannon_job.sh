#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=a01611430@unet.univie.ac.at
#SBATCH --time=40:00:00
#SBATCH --nodes=1 #equal to -N 1
#SBATCH --ntasks-per-node=48
#SBATCH --exclusive
#SBATCH --job-name MON_512
#SBATCH -o mon_shannon_512.out
 
module load gcc/9.1.0-gcc-4.8.5-mj7s6dg
module load openmpi/3.1.4-gcc-9.1.0-fdssbx5
module load gsl/2.5-gcc-9.1.0-ucmpak4
module load fftw/3.3.8-gcc-9.1.0-2kyouz7
module load libtool/2.4.6-gcc-9.1.0-vkpnfol
module load hdf5/1.10.5-gcc-9.1.0-rolgskh
module load metis/5.1.0-gcc-9.1.0-gvmpssi
module load python/3.9.4-gcc-9.1.0-l7amfu6

source /gpfs/data/fs71636/fglatter/python_files/swift_venv/bin/activate
    
cd $DATA/monofonic_exp_shannon/build
mpiexec -np 2 ./monofonIC ../swift_shannon_512_100.conf
  
python3 /gpfs/data/fs71636/fglatter/python_files/rename_and_move_ics_swift.py 1 $DATA/monofonic_exp_shannon/build /gpfs/data/fs71636/fglatter/swiftsim/monofonic_tests/output/shannon_512_100 shannon 512 100.0

cd $DATA/swiftsim/monofonic_tests/output/shannon_512_100    
/gpfs/data/fs71636/fglatter/swiftsim/examples/swift --cosmology --self-gravity --fof --threads=$SLURM_NPROCS /gpfs/data/fs71636/fglatter/swiftsim/monofonic_tests/output/shannon_512_100/shannon_512_100_param.yml
    
