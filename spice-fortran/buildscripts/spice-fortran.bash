function src_configure {
    sed -i 's:-static::g' src/*/mkprodct.csh
}


function src_compile {
    tcsh makeall.csh
}


function src_install {
    BIN="${PACKAGE_INSTALL_DIR}/bin"
    LIB="${PACKAGE_INSTALL_DIR}/lib"

    mkdir -p "$BIN"
    mkdir -p "$LIB"

    mv lib/spicelib.a "${LIB}/libspice.a"

    for BINARY in exe/*; do
        mv "$BINARY" "${BIN}/spice-$(basename "$BINARY")"
    done
}
