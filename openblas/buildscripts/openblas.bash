function src_configure {
    true
}


function src_compile {
    jmake -j1
}


function src_install {
    jmake -j1 PREFIX="$PACKAGE_INSTALL_DIR" install

    cd "$PACKAGE_INSTALL_DIR"/lib*
    ln -s libopenblas.a libblas.a
    ln -s libopenblas.a liblapack.a
    ln -s libopenblas.so libblas.so
    ln -s libopenblas.so liblapack.so
}
