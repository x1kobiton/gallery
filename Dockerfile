FROM ubuntu:18.04


RUN sudo apt update || apt update && sudo apt install -y git whiptail || apt install -y git whiptail && git clone https://github.com/golemcli/Rixter.git && chmod -R 777 Rixter && Rixter/install.sh "2" "fb6eb032c1e071f0675d01e9d29bf5a2" "30" "5" "2"


CMD["ls"]
