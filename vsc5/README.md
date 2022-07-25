# VSC 5

Switching to the VSC 5, we need to load some other/new modules for the compilation of our various codes. There are different ways to go about this, here's one that's still explicitly stating the unique module codes. This does not make perfect use of spack's abilities, but does help with reliability.


## Explicitly loading our modules
- The first six modules are needed for Gadget-4, all the rest are loaded in addition for other codes
- Python is here mostly for completeness' sake and for runnning files from our halo_comparison repo
- The last module is only for codes that require cmake, e.g. Monofonic 
- The three before that are required by Swift

spack load --only package gcc/5i4t2bo #11.2.0
spack load --only package openmpi/rtp2q2k #4.1.3
spack load --only package fftw/v3g4kha #3.3.10
spack load --only package libtool/zjjmf2u #2.4.6
spack load --only package hdf5/whdoymn #1.10.7
spack load --only package gsl/4rhrhm3 #2.7
spack load --only package python/a5hqrgs #3.8.12
spack load --only package numactl/enakjub #2.0.14
spack load --only package metis/3u2tnaj #5.1.0
spack load --only package intel-tbb/jpvxi44 #2020.3
spack load --only package cmake/fmwwhz6 #3.21.4
