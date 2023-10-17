#!/bin/bash
set -e
sudo curl -sSO https://github.com/SiriusBack/archzen/releases/download/v1.0.0/ArchZen.AppImage &&
    sudo chmod +x /bin/ArchZen.AppImage &&
    echo "#!/bin/bash" | sudo tee -a /bin/archzen &&
    echo "sudo /bin/ArchZen.AppImage" | sudo tee -a /bin/archzen &&
    sudo chmod +x /bin/archzen &&
    echo &&
    echo "ArchZen installed successfully!" &&
    echo "You can run using the command: ./archzen" &&
    echo
