# Ramses

The Ramses code seems to be well documented in the linked PDF. We can simply load our default modules as stated in the vsc5 directory.


## Code

- version: [050cb1f00d240640188c89587d55c7b6d36095eb](https://bitbucket.org/rteyssie/ramses/src/050cb1f00d240640188c89587d55c7b6d36095eb)
- [documentation](https://www.ics.uzh.ch/~teyssier/ramses/Documentation_files/ramses_ug.pdf)
- exemplary namelist/parameter file for Richings21 Baryon 7 7 9 simulation (cosmological zoom)


## bin/Makefile changes

- set NDIM to 3
- set MPI to 1
- set NPSCAL to 1 for Zoom simulations. Otherwise, ic_pvar_00001 will not be read (p stands for passive)


