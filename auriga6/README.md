# Auriga 6

Trying to create a zoom-in simulation of a specific halo from https://virgodb.dur.ac.uk:8443/Eagle/MyDB?action=doQuery&queryMode=web&batch=false&SQL=select+*+from+Fiducial_models..RefL0100N1504_Subhalo+where+GalaxyID%3D9744960&PreviousQueries=0 or https://cosmicweb.astro.univie.ac.at/simulation/RefL0100N1504/halo/9744960 equivalently.


## ICs 

- MusIC-panphasia: [54a88338aaa4afc5e4ba2b07b633372994d3b5d4](https://github.com/glatterf42/music-panphasia/tree/54a88338aaa4afc5e4ba2b07b633372994d3b5d4)
- no compile-time parameters
- `auriga_6_ics.conf` 


## Swift

- Swift version: [d7e001621e4de4a277407179ec2137037d1f4927](https://gitlab.cosma.dur.ac.uk/swift/swiftsim/-/tree/d7e001621e4de4a277407179ec2137037d1f4927)
- configure: `./configure --enable-fof --enable-compiler-warnings=yes --enable-stand-alone-fof --with-numa`
- execute: `./swift  --cosmology --self-gravity --fof --limiter --threads=8  Auriga6_halo7_8_10.yml`
- output times: auriga_zoom_snap_times.txt


## Simulation-Runs (levelmin, levelmin_TF, levelmax)

- 7,8,9
- 7,9,9
- 7,8,10
- 7,9,10
- 7,10,10


