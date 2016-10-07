function src_configure {
    jconfigure \
            $(use_enable bzip2) \
            $(use_enable lzma) \
            $(use_enable zlib)
}
