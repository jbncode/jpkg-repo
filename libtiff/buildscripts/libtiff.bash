function src_configure {
    jconfigure \
        $(use_enable cxx) \
        $(use_enable jpeg) \
        $(use_enable lzma) \
        $(use_enable zlib)
}
