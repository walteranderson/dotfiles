#!/usr/bin/env bash

if [ -s "$NVM_DIR/nvm.sh" ]; then
	echo 'NVM already installed'
else
	echo 'Installing NVM...'
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
fi

