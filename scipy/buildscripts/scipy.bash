OPENBLAS="${JPKG_PACKAGE_openblas_LIB}"
test -e "${OPENBLAS}/libblas.so" && export BLAS="${OPENBLAS}/libblas.so"
test -e "${OPENBLAS}/liblapack.so" && export LAPACK="${OPENBLAS}/liblapack.so"
test -e "${OPENBLAS}/libblas.dylib" && export BLAS="${OPENBLAS}/libblas.dylib"
test -e "${OPENBLAS}/liblapack.dylib" && export LAPACK="${OPENBLAS}/liblapack.dylib"
export ATLAS=""

if [ $(uname) == Linux ]; then
    export LDFLAGS="$LDFLAGS -shared"
elif [ $(uname) == Darwin ]; then
    export LDFLAGS="$LDFLAGS -undefined dynamic_lookup"
fi
