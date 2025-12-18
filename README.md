# Parallel Fast GCD
Parallel Fast GCD is a high-performance implementation of a fast greatest common divisor (GCD) algorithm.
This project provides multiple parallel implementations using different parallelization models.

## Build
To build the project, run the following command:
```
./install.sh
```
This script automatically downloads and installs all required dependencies.
After the installation is complete, it invokes make to compile the project.

The provided Makefile supports building different executables using the same compilation settings:
```
make 
make fastgcd
make fastgcd_pthread
make fastgcd_openmp
```
* `make` builds all available targets.
* `make fastgcd` builds the sequential version.
* `make fastgcd_pthread` builds the POSIX threads (pthread) version.
* `make fastgcd_openmp` builds the OpenMP version.

## Usage
Run the executable by specifying the input file as a command-line argument.
Example:
```
./fastgcd input.moduli
```
