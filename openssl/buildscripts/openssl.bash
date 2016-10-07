function src_configure {
    if [ $(uname) == Darwin ]; then
        CONFIG="./Configure darwin64-x86_64-cc"
    else
        CONFIG="./config"
    fi
    $CONFIG --prefix="${PACKAGE_INSTALL_DIR}" shared
}


function src_install {
    jmake -j1 install

    cd "${PACKAGE_INSTALL_DIR}/ssl"
    rmdir certs
    for f in /etc/ssl/certs /etc/ssl/cert.pem /etc/pki/tls/cert.pem /etc/pki/tls/certs; do
        if test -e "$f"; then
            ln -sf "$f" .
        fi
    done

    if ! test -e "cert.pem"; then
        ln -s "${JPKG_PACKAGE_ca_certificates_BASE}/etc/ssl/cert.pem" .
    fi
}
