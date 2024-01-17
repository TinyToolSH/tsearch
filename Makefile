.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tsearch..."
	install -m 555 tsearch $(DESTDIR)/$(prefix)/bin/tsearch
	install -m 555 tsearch_menu $(DESTDIR)/$(prefix)/bin/tsearch_menu
	install -D params.yaml -t /etc/tinytools/
	@echo "done!"

clean:
	@echo "Cleaning tsearch"

distclean: clean

uninstall:
	@echo "Uninstall tsearch"
	rm -f $(DESTDIR)/$(prefix)/bin/tsearch
	rm -f $(DESTDIR)/$(prefix)/bin/tsearch_menu
	rm -f /etc/tinytools/params.yaml
	@echo "done!"

.PHONY: all install clean distclean uninstall
