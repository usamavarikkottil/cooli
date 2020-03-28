sudo apt -y install wget
echo -e "  installing wget \n \n "

echo -e "  running apt-get update \n \n "
sudo apt-get update

echo "Installing bleachbit..."
wget https://download.bleachbit.org/bleachbit_3.2.0_all_debian9.deb
sudo apt-get install ./bleachbit_3.2.0_all_debian9.deb -y
rm bleachbit_3.2.0_all_debian9.deb


echo -e "sublime text editor installation...\n\n"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo -e "installing python-pip and python3-pip"
sudo apt-get install python-pip
sudo apt-get install python3-pip

echo -e "installing youtube dl\n"
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo -e "\n installing vlc media player"
echo -e "deb https://http.kali.org/kali kali-rolling main non-free contrib\ndeb-src https://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
cat /etc/apt/sources.list | sort -u | sudo tee -a  /etc/apt/sources.list
sudo apt-get update
sudo apt-get install vlc -y

echo "Installing Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y 


echo "Installing Virtual Box... "
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian buster contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install linux-headers-$(uname -r) dkms -y
sudo apt-get install virtualbox-6.1 -y
cd ~/
wget https://download.virtualbox.org/virtualbox/6.1.2/Oracle_VM_VirtualBox_Extension_Pack-6.1.2.vbox-extpack
echo "Install virtual box extension pack manually"


echo "Installing safe eyes to protect my eyes..."
sudo apt-get install gir1.2-appindicator3-0.1 gir1.2-notify-0.7 python3-psutil python3-xlib xprintidle -y
sudo pip3 install safeeyes
sudo update-icon-caches /usr/share/icons/hicolor


echo "Installing snap..."
sudo apt update
sudo apt install snapd -y

echo "Installing decodify"
git clone https://github.com/UltimateHackers/Decodify
cd Decodify
make install
rm -r Decodify


echo "Installing vs code..."
wget https://az764295.vo.msecnd.net/stable/fe22a9645b44368865c0ba92e2fb881ff1afce94/code_1.43.1-1584515895_amd64.deb
sudo apt-get install ./code_1.43.1-1584515895_amd64.deb -y
rm code_1.43.1-1584515895_amd64.deb


echo "Installing Apktool..."
sudo apt-get install apktool -y


echo "Installing Gcloud..."
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get install apt-transport-https ca-certificates gnupg -y
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk -y
echo "gcloud alpha cloud-shell ssh" > ~/gcloud.sh
sudo chmod +x gcloud.sh
gcloud init


echo "Installing Openvpn..."
sudo apt-get install openvpn -y


echo "Installing golang..."
sudo apt-get install golang -y
export PATH=$PATH:/usr/local/go/bin


echo "Installing evince (default pdf viewer in ubuntu)..."
sudo apt-get install evince -y



echo "Installing gdb and gdb peda..."
sudo apt-get update
sudo apt-get install libc6-dbg gdb valgrind -y
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
