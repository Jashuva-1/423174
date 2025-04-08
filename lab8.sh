#!/bin/bash

# Core Dump Error – Dereferencing a Null Pointer

# Step 1: Program Code (dump.c)
cat <<'EOF' > dump.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int* ptr = NULL;
    printf("*ptr = %d\n", *ptr);
    return 0;
}
EOF

# Step 2: Compilation and Execution
echo "Compiling dump.c..."
gcc dump.c -o a.out
echo "Running the compiled program..."
./a.out
echo "Expected Output: Segmentation fault (core dumped)"

# Step 3: Debugging with GDB
echo "Recompiling dump.c with debugging symbols..."
gcc dump.c -o dump -g

echo "Starting GDB debugging session..."
echo "
GDB Session Commands:
1. Start GDB: gdb dump
2. List the main function: list main
3. Set breakpoints: 
   - break main
   - break 5
   - break 6
   - break 7
   - break 8
4. Run program: run
5. Print pointer value:
   - print ptr
   - print *ptr
6. Continue execution: c
7. Backtrace and inspect frame:
   - bt
   - frame 0
8. Check local variables: info locals
"
