
build:
	stow .

clean:
	stow -D .

homebrew:
	./install-homebrew.sh
nvm:
	./install-nvm.sh

all: homebrew nvm clean build

