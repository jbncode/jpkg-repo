function src_prepare {
    mkdir -p share/coast/
    mv ../gshhg*/* share/coast/
}


function src_configure {
    jconfigure \
        --datadir="${PACKAGE_INSTALL_DIR}/share/gmt" \
        --docdir="${PACKAGE_INSTALL_DIR}/share/doc/gmt"
}


function src_compile {
    jmake -j1
}


function src_install {
    jmake -j1 install-all
}
