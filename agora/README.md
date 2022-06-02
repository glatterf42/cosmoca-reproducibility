# AGORA

Resimulating the AGORA box (https://arxiv.org/abs/1308.2669) with 1024^3 particles. See also: https://cosmicweb.astro.univie.ac.at/simulation/AGORA_512 for IC setup and snapshot times (though they are here as well).


## ICs 

Created with musIC-panphasia,

- MusIC-panphasia: [54a88338aaa4afc5e4ba2b07b633372994d3b5d4](https://github.com/glatterf42/music-panphasia/tree/54a88338aaa4afc5e4ba2b07b633372994d3b5d4)
- no compile-time parameters
- `agora_1024.conf` 


## Swift code at the VSC

- version: [94e73ee944d84782601c87e490b7fb96420bb68f](https://gitlab.cosma.dur.ac.uk/swift/swiftsim/-/tree/94e73ee944d84782601c87e490b7fb96420bb68f)
- configure: `./configure --with-gsl=$(gsl-config --prefix) --enable-fof --with-metis=/opt/sw/spack-0.12.1/opt/spack/linux-centos7-x86_64/gcc-9.1.0/metis-5.1.0-gvmpssik7izg6ds4gdioiyq7ajvcxnvh --enable-compiler-warnings=yes --with-numa --with-tbbmalloc --enable-mpi-mesh-gravity`
- execute: `mpirun -np 8 /gpfs/data/fs71636/fglatter/swiftsim/examples/swift_mpi --cosmology --self-gravity --fof --limiter --threads=24 --pin /gpfs/data/fs71636/fglatter/swiftsim/examples/agora/1024/agora_1024.yml`
- output times: snap_times_agora1024.txt
- example job script: agora_job.sh
