function src_unpack {
    ar x "${DISTFILES_DIR}/${DISTFILES}"
    unxz data.tar.xz
    tar xf data.tar
}


function src_configure {
    true
}


function src_compile {
    cat usr/share/ca-certificates/mozilla/*.crt > cert.pem
}


function src_install {
    D="${PACKAGE_INSTALL_DIR}/etc/ssl"
    mkdir -p "${D}"
    cp cert.pem "${D}/"
    #mkdir -p "${D}/certs"
    #cp usr/share/ca-certificates/mozilla/*.crt "${D}/certs/"
}
