 
#!/bin/bash


echo ' STEP #1 >>> Mise à jour de la liste des paquetes existants'
sudo apt update

echo ' STEP #2 >>> Installation des paquest pré requis'
sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo ' STEP #3 >>> Ajout de la clé GPG du référentiel Docker officiel au système'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo ' STEP #4 >>> Ajout du référentiel docker aux sources APT'
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo ' STEP #5 >>> Mise à jour des paquets avec le nouveau référentiel ajouté'
sudo apt update

echo ' STEP #6 >>> Vérificaion de l''installation à partir du référentiel Docer au lieu du référentiel par défaut Ubuntu'
apt-cache policy docker-ce

echo ' STEP #7 >>> Installation de docker'
sudo apt install docker-ce

echo ' STEP #8 >>> Vériication du statut de docker'
sudo systemctl status docker
