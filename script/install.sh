#!/bin/sh

#TODO remplacer softBox par le nom de l'exec du soft
#ne pas oublier de le changer aussi dans le launcher
echo "Avant de poursuivre, nous avons besoin des privilèges administrateurs. Entrez le mot de passe root"
sudo su

#---------------------- Partie Daemon ---------------------
#copie le soft au bon endroit
cp ./softBox /usr/bin/softBox

#copie le launcher au bon endroit
cp ./launcher /etc/init.d/launcher
chmod +x /etc/init.d/launcher
update-rc.d launcher defaults
echo "done"

#---------------------- Partie Install ---------------------
