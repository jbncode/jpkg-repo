function src_unpack {
    true
}


function src_configure {
    true
}


function src_compile {
    true
}


function src_install {
    BIN="${PACKAGE_INSTALL_DIR}/bin"

    mkdir -p "$BIN"

    cp "${DISTFILES_DIR}/${DISTFILES}" "${BIN}/ack"
    chmod 755 "${BIN}/ack"
}
