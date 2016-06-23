# NOTES-
# Add Ubuntu host machine user to vboxusers group
# sudo adduser $USER vboxusers
#
# Add gnome-system-tools to allow for usb pass-through in virtualbox
# sudo apt-get install gnome-system-tools
# start application "Users and Groups" from Dash
# make sure Advanced settings - User Privileges - Virtualbox virtualization solution is checked

# Configure vim
echo "--------- Install Pathogen --------"
# Install Pathogen
mkdir /home/vagrant/.vim/
mkdir /home/vagrant/.vim/autoload/ 
mkdir /home/vagrant/.vim/bundle/ 
# Fix CURL certifications path:
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
curl -LSso /home/vagrant/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "--------- Install Nerdtree --------"
# Install Nerdtree
cd /home/vagrant/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

echo "--------- Install Vundle --------"
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim

echo "--------- Change vim directory ownership to vagrant --------"
# Change vim ownership
chown -R --quiet vagrant:vagrant /home/vagrant/.vim 



