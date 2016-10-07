function src_configure {
    jconfigure \
        --with-geotiff \
        --with-libtiff \
        --with-expat="${JPKG_PACKAGE_expat_BASE}" \
        --with-libz \
        --with-libjson-c="${JPKG_PACKAGE_json_c_BASE}" \
        $(use_enable netcdf --with-netcdf)
}
