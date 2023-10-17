#!/bin/bash

# curl -sSL https://siriusback.github.io/archzen.sh | bash
# or
# wget -qO- https://siriusback.github.io/archzen.sh | bash

if [ "$(id -u)" != 0 ]; then
    echo "Please run this script as root"
    exit 1

fi

set -e

echo
echo "Installing ArchZen..."
echo

pacman -S --noconfirm --needed wget

wget https://github.com/SiriusBack/archzen/releases/download/v1.0.0/ArchZen.AppImage

mv ./ArchZen.AppImage /bin

echo "#!/bin/bash" | sudo tee -a ./bin/archzen
echo "/bin/ArchZen.AppImage" | sudo tee -a ./bin/archzen
chmod +x /bin/archzen

echo
echo "ArchZen installed successfully!"
echo "You can run using the command: archzen"
echo
