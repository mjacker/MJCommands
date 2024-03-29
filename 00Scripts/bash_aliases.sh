#!/bin/bash
# MJBash_aliases config for linux
# Last updated - 20230901

# ---
# Go to user directory
# cd ~

# Vars
BASHRCFILE=~/.bashrc
ALIASNAME=".bash_aliases"
ALIASPATHFILE=~/$ALIASNAME
CURRENTPWD=$(pwd)/$ALIASNAME

# Creating a script to upload to git current aliases modified.
echo "#!/bin/bash" > ~/.bash_update
echo "ORIALIASPATHFILE=$CURRENTPWD" >>  ~/.bash_update
echo "cat $ALIASPATHFILE > $CURRENTPWD" >> ~/.bash_update
echo "git add $CURRENTPWD" >> ~/.bash_update
echo "git status" >> ~/.bash_update

# Check if .bash_aliases is alrady created.
echo "Setting $ALIASPATHFILE..."
if test -f "$ALIASPATHFILE"; then
	echo "$ALIASPATHFILE already exists! Can't set custom profile."; exit 1
else
	echo "$ALIASPATHFILE does not exists."
	sleep 1
	echo "Creating .bash_aliases file..."
	touch $ALIASPATHFILE
	sleep 2
fi

if test -f "$ALIASPATHFILE"; then
echo "$ALIASPATHFILE created successfully."
	# If file created setting vim configs.
	if test -f "$ALIASPATHFILE"; then
		echo "Applying config to local .bash_aliases file..."
		cat .bash_aliases > $ALIASPATHFILE
	fi
fi

# Check if .bashrc is already created
if test -f "$BASHRCFILE"; then
	echo "$BASHRCFILE already exists! Can't set custom profile."; exit 1
else
	echo "$BASHRCFILE does not exists."
	sleep 1
	echo "Creating $BASHRCFILE file..."
	touch $BASHRCFILE
	sleep 1

	if ! test -f "$BASHRCFILE"; then
		echo "File $BASHFILE could not be created."; exit 1
	else 
		echo "File created created successfully."
		sleep 1
		echo "Loading custom profile..."
		sleep 2
		echo "# Alias definitions." >> $BASHRCFILE
		echo "# You may want to put all your additions into a separate file like" >> $BASHRCFILE
		echo "# ~/.bash_aliases, instead of adding them here directly." >> $BASHRCFILE
		echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> $BASHRCFILE
		echo "if [ -f ~/.bash_aliases ]; then" >> $BASHRCFILE
		echo "	. ~/.bash_aliases" >> $BASHRCFILE
		echo "fi" >> $BASHRCFILE
		echo "Custom profile loaded."
	fi
fi
