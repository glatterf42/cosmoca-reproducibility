# Spectra

We use tools developed by Oliver Hahn to calculate the power and cross spectra of our simulations. We expand these tools by adding output formats 3, 4, and 5 compatible with Swift, monofonic-experimental, and Gadget-4, respectively. Note that these formats are not cleaned up yet, i.e. monofonic-experimental just expands Swift rather than deleting HDF5 attributes and keys that are not needed anymore.


## Code

- version: [50e40e3d76b38e0cd9a16bb00a756b8a725bdc84](https://github.com/ohahn/spectra/tree/50e40e3d76b38e0cd9a16bb00a756b8a725bdc84)
- exemplary runtime parameters: `--format=4 --output=swift/monofonic_tests/spectra/shannon_100/shannon_100_ics_2 --ngrid=512 --input=swift/monofonic_tests/shannon_128_100/ics_shannon_128_100.hdf5 --input=swift/monofonic_tests/shannon_256_100/ics_shannon_256_100.hdf5`
