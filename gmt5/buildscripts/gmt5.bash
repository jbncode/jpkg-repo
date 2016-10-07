function src_configure {
    mkdir build
    cd build
    GSHHG=$(ls -d ../../gshhg*)
    DCW=$(ls -d ../../dcw*)
    jcmake .. #-DGSHHG_PATH=$GSHHG -DDCW_PATH=$DCW # GSHHG,DCW doesn't seem to work...
}


function src_compile {
    cd build
    jmake
}


function src_install {
    cd build
    jmake -j1 install
}
