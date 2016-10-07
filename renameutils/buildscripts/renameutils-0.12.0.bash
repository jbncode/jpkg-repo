function src_prepare {
    # Fix typo
    sed -i 's/$(DESTDIR)($bindir)/$(DESTDIR)$(bindir)/' src/Makefile.in
}
