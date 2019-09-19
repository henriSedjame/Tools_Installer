#!/bin/bash

echo ' STEP#9 >>> Ajout de l''utilisateur au groupe docker'
sudo usermod -aG docker ubuntu
su - ubuntu
id -nG
