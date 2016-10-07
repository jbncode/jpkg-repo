function src_postinstall {
    # Install module file for usr directory

    MODFILE="${MODULEFILES_DIR}/jpkgusr"

    echo "#%Modules 1.0" > "${MODFILE}"
    echo "module-whatis \"Sets up paths to use the Jpkg 'usr' directory\"" >> "${MODFILE}"
    echo "set root \"${JPKG_USR_DIR}\"" >> "${MODFILE}"
    echo "prepend-path PATH \"\$root/bin\"" >> "${MODFILE}"
    echo "prepend-path CPATH \"\$root/include\"" >> "${MODFILE}"
    echo "prepend-path MANPATH \"\$root/share/man\"" >> "${MODFILE}"
    echo "prepend-path ACLOCAL_PATH \"\$root/share/aclocal\"" >> "${MODFILE}"
    echo "prepend-path PKGCONFIG_PATH \"\$root/share/pkgconfig\"" >> "${MODFILE}"
    echo "prepend-path CMAKE_PREFIX_PATH \"\$root\"" >> "${MODFILE}"
    for libdir in lib32 lib64 lib; do
        echo "prepend-path LIBRARY_PATH \"\$root/${libdir}\"" >> "${MODFILE}"
        echo "prepend-path LD_RUN_PATH \"\$root/${libdir}\"" >> "${MODFILE}"
        echo "prepend-path PKG_CONFIG_PATH \"\$root/${libdir}/pkgconfig\"" >> "${MODFILE}"
        for pyver in 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9; do
            echo "prepend-path PYTHONPATH \"\$root/${libdir}/python${pyver}/site-packages\"" >> "${MODFILE}"
        done
        echo "prepend-path -d \" \" LDFLAGS \"-L'\$root/${libdir}' -Wl,-rpath,'\$root/${libdir}'\"" >> "${MODFILE}"
    done
    for flagvar in CFLAGS CXXFLAGS FCFLAGS; do
        echo "prepend-path -d \" \" ${flagvar} \"-I'\$root/include'\"" >> "${MODFILE}"
    done
}
