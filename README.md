# Ansible Devenv Playbook

## AIO Script

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/naimo84/ansible-devenv-playbook/main/install.sh)"
``````

## Manual Install steps

### Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install ansible 
```sh
brew install ansible
```

### Ansible requirements
```sh
ansible-galaxy install -r requirements.yml
```

## Run Playbook
### On Ubuntu:

```sh
ansible-playbook main.yml
```

### On Mac: 

```sh
ansible-playbook main.yml -K
```
