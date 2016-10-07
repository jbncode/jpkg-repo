function src_configure {
    jconfigure \
        --disable-java \
        --with-included-glib \
        --without-emacs \
        --without-lispdir
}
