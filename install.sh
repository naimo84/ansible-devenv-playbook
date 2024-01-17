#!/bin/bash
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
   echo "brew already installed"
fi

if ! command -v ansible &> /dev/null
then
    brew install ansible
else 
   echo "ansible already installed"
fi

git clone https://github.com/naimo84/ansible-devenv-playbook
cd ansible-devenv-playbook
ansible-galaxy install -r requirements.yml