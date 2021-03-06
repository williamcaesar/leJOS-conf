#! /bin/bash
export RULE="70-lego.rules"
touch $RULE
echo "SUBSYSTEM==\"usb\", DRIVER==\"usb\", ATTRS{idVendor}==\"0694\", ATTRS{idProduct}==\"0002\", GROUP=\"lego\", MODE=\"0660\"" >> $RULE
echo "SUBSYSTEM==\"usb\", DRIVER==\"usb\", ATTRS{idVendor}==\"03eb\", ATTRS{idProduct}==\"6124\", GROUP=\"lego\", MODE=\"0660\"" >> $RULE
sudo mv $RULE /etc/udev/rules.d/$RULE
sudo groupadd lego
sudo gpasswd -a $USER lego
