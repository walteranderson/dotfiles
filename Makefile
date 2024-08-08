
all: homebrew nvm clean build

build:
	stow .

clean:
	stow -D .

homebrew:
	./install-homebrew.sh

nvm:
	./install-nvm.sh
