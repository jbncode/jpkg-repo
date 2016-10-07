function src_configure {
    sed -i 's:^PREFIX=.*$:PREFIX="'"${PACKAGE_INSTALL_DIR}"'":' Makefile
}


function src_compile {
    test -n "$LD_RUN_PATH" && export LD_RUN_PATH="${PACKAGE_INSTALL_DIR}/lib32:${LD_RUN_PATH}"
    test -z "$LD_RUN_PATH" && export LD_RUN_PATH="${PACKAGE_INSTALL_DIR}/lib32"
    export LD_RUN_PATH="${PACKAGE_INSTALL_DIR}/lib64:${LD_RUN_PATH}"
    export LD_RUN_PATH="${PACKAGE_INSTALL_DIR}/lib:${LD_RUN_PATH}"

    jmake -f Makefile-libbz2_so
    ln -sf libbz2.so.${PV} libbz2.so
    jmake libbz2.a bzip2 bzip2recover
}


function src_install {
    jmake -j1 install
    mv libbz2.so* "$PACKAGE_INSTALL_DIR"/lib*
}
