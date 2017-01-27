#!/bin/bash
echo "Getting all the nescessary libs..."
wget https://raw.githubusercontent.com/xanvierb/UbuntuKubeadmInstall/master/scripts/pi.sh
wget https://raw.githubusercontent.com/xanvierb/UbuntuKubeadmInstall/master/scripts/master.sh
wget https://raw.githubusercontent.com/xanvierb/UbuntuKubeadmInstall/master/scripts/minion.sh
wget https://raw.githubusercontent.com/xanvierb/UbuntuKubeadmInstall/master/scripts/default.sh

echo " [✓] done"
echo "Changing file flags"
chmod +x pi.sh master.sh minion.sh default.sh
echo " [✓] done"
echo "Execute installation of standard software and configs"
sudo ./pi.sh
echo -n "Is this the Master(m) or Slave(s)... "
read character
if [ "$character" = "m" ]; then
    echo "Installing Master software"
    sudo ./master
    echo " [✓] done"
else
    if [ "$character" = "s" ]; then
        echo "Installing Slave software"
      	sudo ./minion.sh
	echo " [✓] done"
    else
        echo " [⚡] Unknown input"
    fi
fi
echo "[✓] Everything is done"
