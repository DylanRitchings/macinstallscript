#!/bin/bash


function global {
  
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


    brew install 
        git \
        scala \
        terraform-ls \
        gh


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

    git clone https://github.com/DylanRitchings/DoomConfig.git .

    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
    
    
    
    gh auth login -w
}

#after github login and other functions
function afterGlobal {
    
}

function work {
  
    mkdir ~/Documents/Work
    cd ~/Documents/Work
    mkdir ./Repos
    mkdir ./Scripts
    mkdir ./Files
    
    brew install --cask \
      slack \
      visual-studio-code \
      gpg-suite 

    brew install awscli aws-vault pre-commit tfsec tflint terrascan terraform-docs checkov shellcheck black flake8 jq tfenv pass
}

#after github login and other functions
function afterWork {
    
}

function home {
    mkdir ~/Public/Dev/
    cd ~/Public/Dev/
    mkdir ./Github
    mkdir ./Scripts
    mkdir ./Files
    mkdir ./Config
    
    brew install --cask \
        ableton-live-standard \
        steam
}


