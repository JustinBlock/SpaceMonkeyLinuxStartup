SpaceMonkeyLinuxStartup
=======================

Generates a bash script and gives instructions to have SpaceMonkey start-up on a Linux machine reboot.

Usage
=======================

```
.\startSpaceMonkey.sh USERNAME PASSWORD
```

USERNAME = Space Monkey username

PASSWORD = Space Monkey password

The script will then generate a file called SpaceMonkeyStart.sh which
simply just contains the code to run the SpaceMonkey alpha connection. 

Issues
=======================

If it says you cannot execute the file just make sure to do chmod u+x startSpaceMonkey.sh

Note
=======================

This script is made to work with the Space Monkey Linux Alpha client. It is tested to work with the latest version as of December 20th. This script may stop working at any time because the Linux version of Space Monkey (spacemonkey.com) is constantly being updated. 

Purpose
=======================

The purpose of this script is to make one's username and password more hidden from other users on the same server. Normally the username and password would show up in the processes list but by encapsulating it in a bash script we can contain the password to only being seen by viewing the SpaceMonkeyStart.sh file directly.

I may if their is interest add some sort of obfuscation to the SpaceMonkeyStart.sh script so the file even if accessed by a "bad actor" will be somewhat hard to disect. 

This script however is just made as a small band-aid until the Space Monkey team hopefully adds some sort of api authentication. And it's more so made to just generate an automatic code snippet for Space Monkey to start on bootup.
