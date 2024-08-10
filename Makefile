
all: install clean build

build:
	stow .

clean:
	stow -D .

install:
	./install.sh
