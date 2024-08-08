
all: homebrew clean build

build:
	stow .

clean:
	stow -D .

homebrew:
	./homebrew.sh
