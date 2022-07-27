#!/bin/bash





# Run global on both accounts
function global {
  
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


    brew install 
        git \
        scala \
        terraform-ls \
        gh \
        zsh


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
    
    #zshell setup
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    
    rm ~/.zshrc
    
    cat <<EOF > ~/.zshrc
    if [ -f ~/Public/Dev/Config/zshrc/.zshrc ]; then
        source ~/Public/Dev/Config/zshrc/.zshrc
    fi
    EOF
    
    #emacs setup
    mkdir ~/.doom.d

    cd ~/.doom.d

    git clone https://github.com/DylanRitchings/DoomConfig.git .

    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
    
    
    
    gh auth login -w
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

#after github login and other functions
function afterGlobal {
    
    
}

function afterWork {
    git clone https://github.com/DylanRitchings/zshrc.git ~/Public/Dev/Config/zshrc/.zshrc  
    
    echo "Todo aws-vault login, git config"
}
