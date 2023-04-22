# import os
# import numpy as np
import tvm
from tvm import te, auto_scheduler


# Defining the Matrix Multiplication
@auto_scheduler.register_workload
def matmul_add(N, L, M, dtype):
    A = te.placeholder((N, L), name="A", dtype=dtype)
    B = te.placeholder((L, M), name="B", dtype=dtype)
    C = te.placeholder((N, M), name="C", dtype=dtype)

    k = te.reduce_axis((0, L), name="k")
    matmul = te.compute(
        (N, M),
        lambda i, j: te.sum(A[i, k] * B[k, j], axis=k),
        name="matmul",
        attrs={"layout_free_placeholders": [B]},
    )
    out = te.compute((N, M), lambda i, j: matmul[i, j] + C[i, j], name="out")
    return [A, B, C, out]


# Create the search Task
target = tvm.target.Target("llvm")
N = L = M = 1024
task = tvm.auto_scheduler.SearchTask(
    func=matmul_add, args=(N, L, M,  "float32"), target=target)
print("Computational DAG:")
print(task.compute_dag)
