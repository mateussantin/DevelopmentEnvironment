#!/bin/bash

echo "$(tput setaf 7)
######################
    HELLO WELCOME! 
######################
$(tput sgr 0)"

aliases(){
    clear
    echo "Add Aliases? y/n"
    read aliases
    if [ $aliases = "y" ]
    then
        echo "if [ -f ~/.aliases ]; then
        source ~/.aliases
        fi" >> ~/.zshrc
        cd ~
        wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/aliases/.aliases
        echo "$(tput setaf 2)Aliases added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Aliases! $(tput sgr 0)"
    fi
}

system(){
    clear
    echo "$(tput setaf 3)inserir aqui oq vai ser adicionado... $(tput sgr 0)"
    echo "Add System Settings? y/n"
    read system
    if [ $system = "y" ]
    then
        echo "$(tput setaf 2)System Settings added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added System Settings! $(tput sgr 0)"
    fi
}

devilbox(){
    clear
    echo "Install Devilbox and its dependencies? y/n"
    read devilbox
    if [ $devilbox = "y" ]
    then
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
        echo "$(tput setaf 2)Devilbox added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Devilbox! $(tput sgr 0)"
    fi

    sudo apt update

    echo "$(tput setaf 2)Install Docker! $(tput sgr 0)"
    apt-cache policy docker-ce
    sudo apt install docker-ce

    echo "$(tput setaf 2)Applying user Docker permission! $(tput sgr 0)"
    sudo usermod -aG docker ${USER}

    echo "$(tput setaf 2)Install docker-compose! $(tput sgr 0)"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    echo "$(tput setaf 2)Install Devilbox! $(tput sgr 0)"
    cd ~
    git clone https://github.com/cytopia/devilbox.git
    
    cd ~/devilbox/
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/.env
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/docker-compose.override.yml
    mkdir sh
    
    cd ~/devilbox/sh
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/sh/docker-entrypoint-es.sh
    
    cd ~/devilbox/bash/
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/bash/aliases.sh
    
    cd ~/devilbox/autostart/
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/autostart/autostart.sh
    
    cd ~/devilbox/cfg/php-fpm-7.3/
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/cfg/php-fpm-x.x/www_server.conf
    
    cd ~/devilbox/cfg/php-ini-7.3/
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/cfg/php-ini-x.x/memory_limit.ini
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/cfg/php-ini-x.x/timeouts.ini
    wget -c https://raw.githubusercontent.com/mateussantin/DevelopmentEnvironment/main/devilbox/cfg/php-ini-x.x/xdebug.ini
    
    cd ~/devilbox/
    echo "$(tput setaf 2)Installation Completed! $(tput sgr 0)"
}

vscode(){
    clear
    echo "Add Vscode repository? y/n"
    read vscode
    if [ $vscode = "y" ]
    then
        wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add --
        sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
        sudo apt update
        echo "$(tput setaf 2)Vscode repository added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Repository Vscode! $(tput sgr 0)"
    fi
    echo "$(tput setaf 7)Installing Vscode! $(tput sgr 0)"
    sudo apt -y install code
    echo "$(tput setaf 2)Vscode installed! $(tput sgr 0)"
}

chrome(){
    clear
    echo "Add Google Chrome? y/n"
    read chrome
    if [ $chrome = "y" ]
    then
        wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
        sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
        sudo apt update
        echo "$(tput setaf 2)Google Chrome added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Google Chrome! $(tput sgr 0)"
    fi
    echo "$(tput setaf 7)Installing Google Chrome! $(tput sgr 0)"
    sudo apt -y install google-chrome-stable
    echo "$(tput setaf 2)Google Chrome installed! $(tput sgr 0)"
}

mozilla(){
    clear
    echo "Add Mozilla Firefox? y/n"
    read mozilla
    if [ $mozilla = "y" ]
    then
        sudo apt install firefox
        sudo apt update
        echo "$(tput setaf 2)Mozilla Firefox added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Mozilla Firefox! $(tput sgr 0)"
    fi
}

discord(){
    clear
    echo "Add Discord? y/n"
    read discord
    if [ $discord = "y" ]
    then
        sudo snap install discord
        sudo apt update
        echo "$(tput setaf 2)Discord added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Discord! $(tput sgr 0)"
    fi
}

insomnia(){
    clear
    echo "Add Insomnia? y/n"
    read insomnia
    if [ $insomnia = "y" ]
    then
        sudo snap install insomnia
        sudo apt update
        echo "$(tput setaf 2)Insomnia added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Insomnia! $(tput sgr 0)"
    fi
}

filezilla(){
    clear
    echo "Add Filezilla? y/n"
    read filezilla
    if [ $filezilla = "y" ]
    then
        sudo apt-get install filezilla
        sudo apt update
        echo "$(tput setaf 2)Filezilla added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Filezilla! $(tput sgr 0)"
    fi
}

termius(){
    clear
    echo "Add Termius? y/n"
    read termius
    if [ $termius = "y" ]
    then
        sudo snap install termius-app
        sudo apt update
        echo "$(tput setaf 2)Termius added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Termius! $(tput sgr 0)"
    fi
}

git(){
    clear
    echo "Add Git? y/n"
    read git
    if [ $git = "y" ]
    then
        sudo apt install git
        sudo apt update
        git --version

        echo "$(tput setaf 2)Congigure Git... $(tput sgr 0)"
        echo "$(tput setaf 2)Enter the Global Username for Git:$(tput sgr 0)";
        
        read GITUSER;
        git config --global user.name "${GITUSER}"

        echo "$(tput setaf 2)Enter the Global Email for Git:$(tput sgr 0)";
        read GITEMAIL;
        git config --global user.email "${GITEMAIL}"

        echo "$(tput setaf 2)Git added! $(tput sgr 0)"
    else
        echo "$(tput setaf 5)Not added Git! $(tput sgr 0)"
    fi
}

# initialize
echo -n "$(tput setaf 7)
What you want to install
    (A) Aliases
    (S) System Settings
    (L) DevilBox
    (V) Vscode
    (C) Chrome
    (M) Mozilla Firefox
    (D) Discord
    (I) Insomnia
    (F) Filezilla
    (T) Termius
    (G) Git
    (E) Exit
$(tput sgr 0)"
read apps
case "$apps" in
    a|A)
        aliases
    ;;
    s|S)
        system
    ;;
    l|L)
        devilbox
    ;;
    v|V)
        vscode
    ;;
    c|C)
        chrome
    ;;
    m|M)
        mozilla
    ;;
    d|D)
        discord
    ;;
    i|I)
        insomnia
    ;;
    f|F)
        filezilla
    ;;
    t|T)
        termius
    ;;
    g|G)
        git
    ;;
    e|E)
        clear
        echo "Bye..."
    ;;
    *|"")
        echo "Invalid option"
    ;;
esac