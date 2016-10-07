function src_configure {
    jconfigure \
        --enable-fortran \
        $(use_enable openmp)
}
