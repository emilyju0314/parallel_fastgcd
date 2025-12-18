CFLAGS=-std=c99 -Wall -O4 -pthread -fopenmp -I./gmp-patched/include/ -Dmpz_raw_64
LDFLAGS=-static -L./gmp-patched/lib -lgmp


TARGETS = fastgcd fastgcd_pthread fastgcd_openmp

all: $(TARGETS)

%: %.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o $@

