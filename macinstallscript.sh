#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


function brewFor {
    for app in $1;
    do
        brew install --cask "$app"
    done
}


#Global

globalApp=(
    brave-browser
    emacs
)

brew install --cask brave-browser


#Work

workApp=(
)


#home

homeApp=(
    ableton-live-standard
    steam
)
