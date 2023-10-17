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

tee ./bin/archzen <<_EOF_
#!/bin/bash
/bin/ArchZen.AppImage
_EOF_

chmod +x /bin/archzen

echo
echo "ArchZen installed successfully!"
echo "You can run using the command: archzen"
echo
