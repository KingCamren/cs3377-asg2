#include <stdio.h>
#include "helloheader.h"
#include "fibonacci.h"

int main() {
    printf("Hello from main!\n");
    hello_function();

    printf("The 10th Fibonacci number is: %11d\n", fibonacci_n(10));
    return 0;
}
