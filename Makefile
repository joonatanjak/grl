PREFIX = /usr/local

install: grl
		pacman --noconfirm -S python3 python-pip
		pip3 install unidecode
		mkdir -p $(DESTDIR)$(PREFIX)/share
		cp -f strongsgreek.xml $(DESTDIR)$(PREFIX)/share/strongsgreek.xml
		mkdir -p $(DESTDIR)$(PREFIX)/bin
		sed "s~strongsgreek.xml~$(DESTDIR)$(PREFIX)/share/strongsgreek.xml~" grl > $(DESTDIR)$(PREFIX)/bin/grl
		chmod 755 $(DESTDIR)$(PREFIX)/bin/grl

uninstall:
		rm -f $(DESTDIR)$(PREFIX)/bin/grl
		rm -f $(DESTDIR)$(PREFIX)/share/strongsgreek.xml

.PHONY: install uninstall
