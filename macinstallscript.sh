#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


function brewAppFor {
    for app in $1;
    do
        brew install --cask "$app"
    done
}

function brewTermFor {
    for app in $1;
    do
        brew install "$app"
    done
}


#Global

globalTerm (
    git
  )

globalApp=(
    brave-browser
    emacs
)

mkdir ~/.doom.d

cd ~/.doom.d

git clone https://github.com/DylanRitchings/DoomConfig.git

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

#Work

workApp=(
)



#home

homeApp=(
    ableton-live-standard
    steam
    
)
