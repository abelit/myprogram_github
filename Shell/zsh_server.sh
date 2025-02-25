#!/bin/zsh
#zsh TCP server script
zmodload zsh/net/tcp
ztcp -l 5150
fd=$REPLY

echo "Waiting for a client ..."
ztcp -a $fd
clientfd=$REPLY
echo " client connected"

echo " Welcome to my server " >& $clientfd

while [ 1 ]
	do
		read line <& $clientfd
		if [[ $line = "exit" ]]
		then
			break
		else
			echo Received: $line
			echo $line >& $clientfd
		fi
	done
echo "Client disconnected session"
ztcp -c $fd
ztcp c $clientfd
%
