function src_configure {
    true
}


function src_compile {
    jmake -j1
}


function src_install {
    jmake -j1 PREFIX="$PACKAGE_INSTALL_DIR" install

    cd "$PACKAGE_INSTALL_DIR"/lib*
    ln -sf libopenblas.a libblas.a
    ln -sf libopenblas.a liblapack.a
    if test -e libopenblas.so; then
        ln -sf libopenblas.so libblas.so
        ln -sf libopenblas.so liblapack.so
    fi
    if test -e libopenblas.dylib; then
        ln -sf libopenblas.dylib libblas.dylib
        ln -sf libopenblas.dylib liblapack.dylib
    fi
}
