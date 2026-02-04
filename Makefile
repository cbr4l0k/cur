PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

.PHONY: install uninstall help

help:
	@echo "Usage:"
	@echo "  make install           Install cur to $(BINDIR)"
	@echo "  make install PREFIX=~  Install to ~/bin"
	@echo "  make uninstall         Remove cur from $(BINDIR)"

install:
	install -d $(BINDIR)
	install -m 755 cur $(BINDIR)/cur

uninstall:
	rm -f $(BINDIR)/cur
