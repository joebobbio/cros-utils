echo "Enabling light mode flag.."
echo "--enable-features=DarkLightMode" | sudo tee -a /etc/chrome_dev.conf
echo "Done!"
echo "Rebooting..."
sudo restart ui
