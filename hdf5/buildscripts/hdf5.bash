function src_configure {
    jconfigure \
            $(use_enable zlib) \
            $(use_enable cxx) \
            --enable-fortran
}
