# MonofonIC Tests

The monofonIC code is available at https://bitbucket.org/ohahn/monofonic/src/master/ . However, for our tests, we use the experimental version (only available through admission from Oliver Hahn, ohahn) from https://bitbucket.org/ohahn/monofonic-experimental/src/master/ . The branch newrandom is the one holding all desired code.


## Accessing the different waveforms

To change the Daubechies wavelet in question, go to line 146 of /src/plugins/random_music2.cc and spell out the desired wavelet there. Only exception: to change to the exact solution (the shannon wavelet), change line 258 to '#if 0'.


## MonofonIC code at the VSC

- version: [981c093447fe1860297e8cf2337f24f280181ec5](https://bitbucket.org/ohahn/monofonic-experimental/src/981c093447fe1860297e8cf2337f24f280181ec5)
- configuration: `shannon_512_100.conf`

## Swift code at the VSC

- version: [94e73ee944d84782601c87e490b7fb96420bb68f](https://gitlab.cosma.dur.ac.uk/swift/swiftsim/-/tree/94e73ee944d84782601c87e490b7fb96420bb68f)
- configure: `./configure --with-gsl=$(gsl-config --prefix) --enable-fof --with-metis=/opt/sw/spack-0.12.1/opt/spack/linux-centos7-x86_64/gcc-9.1.0/metis-5.1.0-gvmpssik7izg6ds4gdioiyq7ajvcxnvh --enable-compiler-warnings=yes `
- execute: `/gpfs/data/fs71636/fglatter/swiftsim/examples/swift --cosmology --self-gravity --fof --threads=$SLURM_NPROCS /gpfs/data/fs71636/fglatter/swiftsim/monofonic_tests/output/shannon_512_100/shannon_512_100_param.yml`
- output times: `monofonic_snap_times.txt`
- example job file: `shannon_job.sh`
