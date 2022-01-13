#!/bin/bash

export PATH=$HOME/bin:/usr/bin:/usr/local/bin:${PATH}
export ANDROID_HOME=/Users/sy/Library/Android/sdk
PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$PATH
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$JAVA_HOME:$PATH

emulator @$1