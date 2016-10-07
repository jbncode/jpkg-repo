OPENBLAS="${JPKG_PACKAGE_openblas_LIB}"
export BLAS="${OPENBLAS}/libblas.so"
export LAPACK="${OPENBLAS}/liblapack.so"
export ATLAS=""

if [ $(uname) == Linux ]; then
    export LDFLAGS="$LDFLAGS -shared"
fi
