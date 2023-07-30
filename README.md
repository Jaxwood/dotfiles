# Bootstraping

Using Ansible to bootstrap any new machine with my preferred settings.

## Installation

```sh
ansible-playbook -K --ask-vault-pass local.yml 
```

with tags

```sh
ansible-playbook --tags <tag-name> --ask-vault-password local.yml 
```

## Testing

Provided dockerfile can be used for testing any changes

```sh
docker build -t new-machine .
docker run -it new-machine /bin/bash
```

once inside the container, run

```sh
ansible-playbook -K --ask-vault-pass local.yml 
```

