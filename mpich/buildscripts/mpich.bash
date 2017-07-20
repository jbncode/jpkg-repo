function src_configure {
    jconfigure \
        --enable-static \
        --enable-shared \
        --enable-f77 \
        --enable-fc \
        --enable-cxx \
        --enable-romio
}
