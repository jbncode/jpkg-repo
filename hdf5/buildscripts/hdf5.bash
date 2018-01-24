function src_configure {
    jconfigure \
            $(use_enable zlib) \
            $(use_enable cxx) \
            $(use_enable fortran2003) \
            --enable-fortran
}
