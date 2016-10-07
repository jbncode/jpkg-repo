function src_prepare {
    aclocal $ACLOCALFLAGS
    autoconf
    autoheader
    automake --add-missing
}

function src_configure {
    jconfigure \
        $(use_enable lzma) \
        $(use_enable zlib)
}
