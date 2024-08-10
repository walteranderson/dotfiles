
all: install clean stow

stow:
	stow .

clean:
	stow -D .

install:
	./install.sh
