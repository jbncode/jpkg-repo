function src_configure {
    true
}


function src_compile {
    tcsh makeall.csh
}


function src_install {
    BIN="${PACKAGE_INSTALL_DIR}/bin"
    LIB="${PACKAGE_INSTALL_DIR}/lib"
    INC="${PACKAGE_INSTALL_DIR}/include"

    mkdir -p "$BIN"
    mkdir -p "$LIB"
    mkdir -p "$INC"

    mv lib/cspice.a "${LIB}/libcspice.a"
    mv lib/csupport.a "${LIB}/libcspicesupport.a"

    for BINARY in exe/*; do
        mv "$BINARY" "${BIN}/cspice-$(basename "$BINARY")"
    done

    mv include naif
    mv naif "${INC}/"
}
