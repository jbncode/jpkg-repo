function src_configure {
    export LDFLAGS="$LDFLAGS -ldl"
    jconfigure \
        --with-ssl=openssl \
        --with-openssl \
        $(use_enable pcre) \
        $(use_enable zlib --with-zlib)
}
