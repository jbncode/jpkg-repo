function src_configure {
    jconfigure \
        $(use_enable pcre --enable-perl-regexp)
}
