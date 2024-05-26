#!/bin/bash

IFS_ORIG=${IFS}
export IFS=":"
libpath=${LD_LIBRARY_PATH}
for entry in $libpath; do
  if [[ $entry == *"hdf"* ]]; then
    export HDF5_INC=${entry::-4}/include
    export HDF5_LIB=${entry::-4}/lib
  fi
  if [[ $entry == *"lapack"* ]]; then
    export LAPACK_LIB=${entry::-4}/lib
  fi
  if [[ $entry == *"blas"* ]]; then
    export BLAS_LIB=${entry::-4}/lib
  fi
done
export IFS=${IFS_ORIG}
