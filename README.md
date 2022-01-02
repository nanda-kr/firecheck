# firecheck
SUSE: Is the endpoint allowed through firewall?

Is your platform/systems/infrastructure hosted by a different team? 

You created tickets for the network team, but not sure if all endpoints are allowed?

This is a bash shell script to quickly run at OS level to check if a list of endpoints in the file ```targets.list``` are allowed through firewall.

While this is written for SUSE, it should work in any bash shell, but might have to tweak the expected connection failure message.

**Prerequisites**

1. Create a file ```targets.list``` with the list of endpoints including the protocol like https or sftp (check the sample file attached)
2. Place the file is same folder as the firecheck.sh file
