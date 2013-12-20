#!/bin/bash

# startSpaceMonkey.sh
# @purpose - This script simply executes the startup command
# for Space Monkey to run.
# @author - Justin Block
EXPECTED_ARGUMENTS=2


# If the user does not enter two arguments we terminate the script
if [ $# -ne $EXPECTED_ARGUMENTS ]
then
	echo "You must enter your username and password."
	echo "Correct usage - ./startSpaceMonkey.sh USERNAME PASSWORD"
	exit
fi

# Writes to a new file (deletes if exists)
cat > SpaceMonkeyStartup.sh << EOF
#!/bin/bash
space_fs --username $1 --password $2
EOF
# End file write

# And now lets make sure that the script has 
# execute permission
chmod u+x SpaceMonkeyStartup.sh

# Now let's let the user know their script is all ready
echo "Startup script created - please add the below line to /etc/rc.local"
echo "su -c \""$PWD/SpaceMonkeyStartup.sh\"" $(whoami)"
