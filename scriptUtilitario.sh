read rootAnswear

if [ \"$rootAnswear\"=="S" ]
#!/bin/bash

echo \"Would you like to update and upgrade your machine? S/n\"

read upAnswear

if [ \"$upAnswear\"=="S" ]
then 
	sudo apt update && sudo apt upgrade -y
fi

echo \"Would you like to change your root password? S/n\"

read rootAnswear

if [ \"$rootAnswear\"=="S" ]
then
        sudo passwd root
fi

echo \"Would you like to change your ubutnu password? S/n\"

read ubuntuAnswear

if [ \"$ubuntuAnswear\"=="S" ]
then
        sudo passwd ubuntu
fi

nodejs --version

if [ $? -eq 1 ]
then 
	sudo apt install nodejs
fi

npm --version

if [ $? -eq 1 ]
then
        sudo apt install npm
fi

docker --version

if [ $? -eq 1 ]
then
        sudo apt install docker.io

	sudo systemctl enable docker

	sudo systemctl start docker
fi

echo \"would you like to install java? S/n\"

read javaAnswear

if [ \"$javaAnswear\"=="S" ]

then 
	echo \"Which java version do you want?\"
	
	read version
	
	sudo apt install openjdk-$version-jdk -y

fi
