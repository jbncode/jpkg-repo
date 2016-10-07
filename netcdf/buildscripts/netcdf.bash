function src_configure {
    jconfigure \
            $(use_enable hdf5 --enable-netcdf-4)
}
