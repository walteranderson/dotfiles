source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/plugins.zsh

# enable VIM mode!
bindkey -v

# useful aliases across all terminal environments
source ~/.shell/aliases.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dribe react native requirements
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/build-tools/28.0.2:$PATH"
