echo "Install vscode..."
wget https://az764295.vo.msecnd.net/stable/d045a5eda657f4d7b676dedbfa7aab8207f8a075/code_1.72.2-1665614327_amd64.deb
sudo dpkg -i code_1.72.2-1665614327_amd64.deb

echo "Install anydesk..."
sudo su
#Run the following commands as root user:

#- add repository key to Trusted software providers list

wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
#- add the repository:

echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
#- update apt cache:

apt update
#- install anydesk:

apt install anydesk


