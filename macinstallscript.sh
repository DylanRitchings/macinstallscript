#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


#Global

brew install 
    git \
    scala \
    terraform-ls \
  

brew install --cask \
    brave-browser \
    emacs \
    discord \
    gimp \
    microsoft-office \
    google-drive \
    rectangle \
    disk-inventory-x \
    lulu \
    avg-antivirus

##emacs setup
mkdir ~/.doom.d

cd ~/.doom.d

git clone https://github.com/DylanRitchings/DoomConfig.git

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

#Work

brew install --cask \
  slack \
  visual-studio-code



#home

brew install --cask \
    ableton-live-standard \
    steam
    
