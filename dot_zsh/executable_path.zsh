# Python3
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH"
PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
PATH="/Users/naitian/Library/Python/3.6/bin:$PATH"

# RVM
PATH="$HOME/.rvm/bin:$PATH"

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
PATH="$HOME/.rbenv/shims:$PATH"

# Cargo
PATH="$HOME/.cargo/bin:$PATH"

# Go
PATH="$PATH:/usr/local/go/bin"

# TeX
PATH="$PATH:/usr/local/texlive/2022/bin/universal-darwin"

# I feel like this should already be in PATH...
PATH="/usr/local/sbin:$PATH"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
PATH=${PATH}:${ANDROID_HOME}/tools
PATH=${PATH}:${ANDROID_HOME}/platform-tools

export PATH
