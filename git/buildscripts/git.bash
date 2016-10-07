export PERL_PATH="${JPKG_PACKAGE_perl_BIN}/perl"
export PYTHON_PATH="${JPKG_PACKAGE_python_BIN}/python3"

function makeopts {
    opts=""
    #opts+=" NO_OPENSSL=YesPlease"
    #opts+=" NO_EXPAT=YesPlease"
    opts+=" NO_TCLTK=YesPlease"
    opts+=" NO_GETTEXT=YesPlease"
    echo "$opts"
}


function src_configure {
    true
}


function src_compile {
    jmake prefix="$PACKAGE_INSTALL_DIR" $(makeopts) all
}


function src_install {
    jmake -j1 prefix="$PACKAGE_INSTALL_DIR" $(makeopts) install
}
