function src_configure {
    true
}


function src_compile {
    ./bootstrap.sh --prefix="$PACKAGE_INSTALL_DIR" \
            --with-libraries=atomic,date_time,filesystem,math,system,thread
    ./b2 --ignore-site-config
}


function src_install {
    ./b2 --ignore-site-config install
}
