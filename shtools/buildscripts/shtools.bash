function src_configure {
    sed -i -e "s:/usr/local:$PACKAGE_INSTALL_DIR:g" Makefile
}


function src_compile {
    jmake fortran
}


function src_install {
    INC="${PACKAGE_INSTALL_DIR}/include"
    LIB="${PACKAGE_INSTALL_DIR}/lib"
    MAN="${PACKAGE_INSTALL_DIR}/share/man"

    mkdir -p "$INC"
    mkdir -p "$LIB"
    mkdir -p "$MAN"

    cp "lib/libSHTOOLS.a" "${LIB}/"
    cp "modules/"*.mod "${INC}/"
    cp -r "man/man1" "${MAN}/"

    pushd "$LIB"
    ln -s libSHTOOLS.a libshtools.a
}
