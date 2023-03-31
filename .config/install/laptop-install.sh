#!/bin/bash

GIT_REPO="arthur-remy/.dotfiles"
GIT_REPO_URL="https://github.com/$GIT_REPO"
DOTFILES_DIR="$HOME/.dotfiles"
SWAP_SIZE=15670

echo -e "INSTALLATION SCRIPT:\n
Press any key to start:\n
1. Install git if needed\n
2. Download dotfiles and install them\n
   (conflicting local config files are saved to .config/backup)\n
3. Install default packages (including yay and AUR packages)\n
4. Apply custom system config\n
5. Enable swap ($SWAP_SIZE b)\n
6. Install cronjobs\n"

### INSTALL GIT

if !which git; then
	sudo pacman -S git
fi

### COPY DOTFILES

if [[ -d $DOTFILES_DIR ]]
then
	/usr/bin/git --git-dir=$DOTFILES_DIR --work-tree=$HOME pull
else
	git clone --bare $GIT_REPO_URL $DOTFILES_DIR
fi

# Backup existing config files
mkdir -p .config/backup
/usr/bin/git --git-dir=$DOTFILES_DIR --work-tree=$HOME checkout 2>&1 \
	| egrep "\s+\." | awk {'print $1'} \
	| xargs -i sh -c \
	"echo -en 'Creating {} backup\n'; cp --parents {} .config/backup/; rm {}"

/usr/bin/git --git-dir=$DOTFILES_DIR --work-tree=$HOME checkout
/usr/bin/git --git-dir=$DOTFILES_DIR --work-tree=$HOME remote set-url origin git@github.com:$GIT_REPO

### INSTALL DEFAULT PACKAGES

$HOME/.config/install/install-packages.sh

### APPLY SYSTEM CONFIG

for f in $(find $HOME/.config/system -type f); do
	sudo cp $f ${f#$HOME/.config/system}
done

### ENABLE SWAP

dd if=/dev/zero of=/swapfile bs=1M count=$size status=progress
chmod 0600 /swapfile
mkswap -U clear /swapfile
swapon /swapfile
echo "/swapfile none swap defaults 0 0" >> /etc/fstab

# INSTALL CRONJOBS

sudo systemctl enable cronie
crontab $HOME/.config/crontabs/user_crontab
sudo crontab $HOME/.config/crontabs/root_crontab

### REBOOT

echo -e "Press a key to reboot and finish the installation...\n"
read -n 1
reboot

