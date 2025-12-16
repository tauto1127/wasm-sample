// main.c

#include "stdio.h"

double global_variable = 0;

void foo2() { printf("The global var is: %f\n", global_variable); }

int foo(int x) {
  printf("The parameter is: %d\n", x);
  foo2();
  return x;
}

int main(int argc, char *argv[]) {
  int local_variable = 0;
  int i = 0;

  foo(local_variable);

  for (i = 0; i < local_variable; i++) {
    printf("Enter loop with i = %d\n", i);
  }

  return 0;
}
