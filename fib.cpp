#include <cstdio>
#include <cstdint>
#include <cstdlib>

static uint64_t fib(uint64_t n) {
  if (n <= 1) return 1;
  return fib(n - 1) + fib(n - 2);
}

int main(int argc, char *argv[]) {
  printf("%lu \n", fib(atoi(argv[1])));
}
