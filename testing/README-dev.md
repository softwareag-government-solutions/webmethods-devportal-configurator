# Developing the configurator

## link to ansible roles

mkdir -p ./resources/ansible
ln -s <LOCAL_PATH>/sagdevops-ansible-common ./resources/ansible/sagdevops-ansible-common
ln -s <LOCAL_PATH>/sagdevops-ansible-developer-portal ./resources/ansiblesagdevops-ansible-developer-portal

## Use DEV compose

docker-compose  --env-file .env -f dev/docker-compose.yml up -d devportal elasticsearch