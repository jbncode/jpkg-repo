function src_configure {
    jconfigure \
        --with-zlib \
        --with-ssl \
        --with-ca-bundle="${JPKG_PACKAGE_openssl_BASE}/ssl/cert.pem" \
        --with-ca-path="${JPKG_PACKAGE_openssl_BASE}/ssl/certs"
}
