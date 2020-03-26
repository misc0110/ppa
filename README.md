# PPA Usage

First, add the public key of the PPA and the PPA URL to the package manager, and update the package manager

    curl -s "https://misc0110.github.io/ppa/KEY.gpg" | sudo apt-key add -
    sudo curl -s -o /etc/apt/sources.list.d/misc0110.list "https://misc0110.github.io/ppa/file.list"
    sudo apt update 

Then, you can install the packages found in this repository by simply running

    sudo apt install <package name>
    
