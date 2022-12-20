#include <memory.h>
#include <stdio.h>
#include <stdlib.h>

inline void kernelAdd(const int *a, const int *b, int *c) {
  *c = *a + *b;
}

inline void kernelSub(const int *a, const int *b, int *c) {
  *c = *a - *b;
}

#define kernel(a) kernel##a

#define genCompute(cmp, name)                                                                         \
  void cmp(int *a, int *b, int *c, int iter_begin, int iter_end, int iter_stride) {                   \
    for (int i = iter_begin; i < iter_end; i += iter_stride) kernel(name)(&(a[i]), &(b[i]), &(c[i])); \
  }

genCompute(add, Add);
genCompute(sub, Sub);

int main() {
  int *a = (int *)malloc(10 * sizeof(int));
  int *b = (int *)malloc(10 * sizeof(int));
  int *c = (int *)malloc(10 * sizeof(int));
  for (int i = 0; i < 10; ++i) {
    a[i] = 1;
    b[i] = i;
    c[i] = 0;
  }

  add(a, b, c, 0, 10, 1);
  for (int i = 0; i < 10; ++i) { printf("%d \t ", c[i]); }
  printf("\n");
  sub(a, b, c, 0, 10, 1);
  for (int i = 0; i < 10; ++i) { printf("%d \t ", c[i]); }
}
