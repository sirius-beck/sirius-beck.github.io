#!/bin/bash
set -e
sudo curl -sSO https://github.com/SiriusBack/archzen/releases/download/v1.0.0/ArchZen.AppImage &&
    sudo chmod +x ./ArchZen.AppImage &&
    echo "#!/bin/bash" | sudo tee -a ./archzen &&
    echo "sudo ./ArchZen.AppImage" | sudo tee -a ./archzen &&
    sudo chmod +x ./archzen &&
    echo &&
    echo "ArchZen installed successfully!" &&
    echo "You can run using the command: ./archzen" &&
    echo
