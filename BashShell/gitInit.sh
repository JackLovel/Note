#!/bin/bash

echo please enter your github username and email

read -p 'enter username: ' name
read -p 'enter email: ' email

git config --global user.name $name
git config --global user.email $email

echo

#ssh-keygen -t rsa

#gedit ~/.ssh/id_rsa.pub

#echo Hello word

#ssh -T git@github.com

