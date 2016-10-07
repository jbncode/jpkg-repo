function src_configure {
    jcmake \
        -DWITH_CGAL_Qt3=OFF \
        -DWITH_CGAL_Qt4=OFF \
        -DWITH_CGAL_Qt5=OFF \
        -DWITH_LEDA=OFF \
        -DWITH_GMPXX=OFF
}
