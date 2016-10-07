function src_configure {
    set -x
    LIB="${JPKG_PACKAGE_tcl_LIB}"
    INC="${JPKG_PACKAGE_tcl_INC}"
    source "${LIB}/tclConfig.sh"
    jconfigure \
        --without-x \
        --without-tclx \
        --with-tclx-ver="${TCL_VERSION}" \
        --with-tcl="${LIB}" \
        --with-tcl-ver="${TCL_VERSION}" \
        --with-tcl-lib="${LIB}" \
        --with-tcl-inc="${INC}"
}
