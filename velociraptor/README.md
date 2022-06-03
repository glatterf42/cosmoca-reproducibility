# Finding Substructure with Velociraptor

We use Velociraptor for finding substructure. Unfortunately, it doesn't work on-the-fly with Swift due to a disrupting error as soon as there are more than 0 structures found, but we can use the standalone version of Vr.


## Code

- version: [dc6d330eef60b7ca10e029d9a9af434454575daa](https://github.com/ICRAR/VELOCIraptor-STF/tree/dc6d330eef60b7ca10e029d9a9af434454575daa)
- cmake parameters: `-DNBODY_OPENMP=1 -DVR_HDF5=1 -DCMAKE_BUILD_TYPE=Release -DVR_MPI=OFF`
- configuration file: `standalone_vr.cfg`
