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


## Input and Output Format
The input file `input.moduli` contains a list of moduli represented in hexadecimal format,
with one modulus per line. All moduli in the input file must be unique.

The program produces the following outputs:

1. **vulnerable_moduli**  
   A list of moduli that share a non-trivial common divisor with at least one other input modulus.
   Each modulus is written in hexadecimal format, one per line.

2. **gcds**  
   A list of greatest common divisors corresponding to each entry in `vulnerable_moduli`.
   Each value represents the GCD between a vulnerable modulus and the product of all other
   moduli in `input.moduli`. The values are written in hexadecimal format, one per line.

