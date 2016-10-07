function src_configure {
    jconfigure \
        $(use_enable bzip2 --enable-pcregrep-libbz2) \
        $(use_enable zlib --enable-pcregrep-libz) \
        $(use_enable cxx --enable-cpp) \
        --enable-pcretest-libreadline \
        --enable-utf \
        --enable-unicode-properties
}
