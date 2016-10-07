#!/bin/bash

function src_configure {
    export CPPFLAGS="-P $CPPFLAGS" # Fixes compilation problem on some machines
    jconfigure --with-shared
}


function src_install {
    jmake -j1 install
    cd "${PACKAGE_INSTALL_DIR}/include"
    ln -sf ncurses/* .
}
