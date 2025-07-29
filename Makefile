.PHONY: all
all: install clean stow

.PHONY: stow
stow:
	stow . -t ~/

.PHONY: clean
clean:
	stow -D . -t ~/

.PHONY: install
install:
	./scripts/install
