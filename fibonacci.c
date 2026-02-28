#include "fibonacci.h"
long long fibonacci_n(int n) {
    if (n < 0)
        return -1; // Or handle error appropriately
    
    if (n == 0) return 0;
    if (n == 1) return 1;
    
    long long a = 0;
    long long b = 1;
    long long next;
    for (int i = 2; i <= n; i++) {
        next = a + b;
        a = b;
        b = next;
    }
    return b;
}