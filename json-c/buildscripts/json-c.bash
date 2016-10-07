function src_prepare {
    sed -i "s:-Werror::" Makefile.in
}
