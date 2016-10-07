function src_configure {
    true
}


function src_compile {
    jmake
}


function src_install {
    BIN="${PACKAGE_INSTALL_DIR}/bin"
    MAN="${PACKAGE_INSTALL_DIR}/share/man/man1"
    mkdir -p "$BIN"
    mkdir -p "$MAN"

    cp compress "$BIN"
    pushd "$BIN"
    ln -s compress uncompress
    popd
    cp compress.1 "$MAN"
    echo ".so compress.1" > "${MAN}/uncompress.1"
}
