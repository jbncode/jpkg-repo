function src_prepare {
    REPLACEMENT="missing = \[\]"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_bzip2_INC')"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_ncurses_INC')"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_openssl_INC')"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_readline_INC')"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_xz_utils_INC')"'\n'
    REPLACEMENT+="        inc_dirs.append('$JPKG_PACKAGE_zlib_INC')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_bzip2_LIB')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_ncurses_LIB')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_openssl_LIB')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_readline_LIB')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_xz_utils_LIB')"'\n'
    REPLACEMENT+="        lib_dirs.append('$JPKG_PACKAGE_zlib_LIB')"'\n'
    sed -i -e "s:missing = \[\]:${REPLACEMENT}:" setup.py
}
