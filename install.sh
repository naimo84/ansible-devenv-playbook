#!/bin/bash
if [ "$(uname -s)" == "Linux" ]; then
if ! command -v git &> /dev/null
then
    SUDO=''
    if (( $EUID != 0 )); then
        SUDO='sudo'
    fi
    $SUDO  apt install git
 
fi
fi
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
   echo "brew already installed"
fi
  
if [ "$(uname -s)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if ! command -v ansible &> /dev/null
then
    brew install ansible
else 
   echo "ansible already installed"
fi

git clone https://github.com/naimo84/ansible-devenv-playbook
cd ansible-devenv-playbook
LC_ALL=C.UTF-8 ansible-galaxy install -r requirements.yml