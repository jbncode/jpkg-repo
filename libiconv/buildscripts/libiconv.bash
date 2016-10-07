function src_prepare {
    sed -i 's/_GL_WARN_ON_USE (gets.*//' srclib/stdio.in.h
}
