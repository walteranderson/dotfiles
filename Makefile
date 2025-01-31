
all: install clean stow

stow:
	stow . -t ~/

clean:
	stow -D . -t ~/

install:
	./install.sh
