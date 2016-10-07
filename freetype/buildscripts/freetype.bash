function src_configure {
    jconfigure \
            $(use_enable bzip2) \
            $(use_enable png)
}
