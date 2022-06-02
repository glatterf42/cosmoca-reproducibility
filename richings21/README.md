# Richings 2021

Trying to create a zoom-in simulation of a specific halo from https://doi.org/10.1093/mnras/staa4013.

FoF ID 128


## ICs 


- MusIC-panphasia: [54a88338aaa4afc5e4ba2b07b633372994d3b5d4](https://github.com/glatterf42/music-panphasia/tree/54a88338aaa4afc5e4ba2b07b633372994d3b5d4)
- no compile-time parameters
- `ics_richings21.conf` 


## Swift

- Swift version: [d7e001621e4de4a277407179ec2137037d1f4927](https://gitlab.cosma.dur.ac.uk/swift/swiftsim/-/tree/d7e001621e4de4a277407179ec2137037d1f4927)
- configure: `./configure --enable-fof --enable-compiler-warnings=yes --enable-stand-alone-fof --with-numa`
- execute: `./swift  --cosmology --self-gravity --fof --limiter swift.yml  --threads 16 --pin`


## Simulation-Runs (levelmin, levelmin_TF, levelmax)

- 7,7,9
- 7,7,10
- 7,9,10
