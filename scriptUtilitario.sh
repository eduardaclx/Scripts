#!bin/bash

read rootAnswear

if [ \"$rootAnswear\"=="S" ]

echo \"Would you like to update and upgrade your machine? S/n\"

read upAnswear

if [ \"$upAnswear\"=="S" ]
then
        sudo apt update && sudo apt upgrade -y -q

        echo "Upgrade complete!"
        echo ""
fi

echo \"Would you like to change your root password? S/n\"

read rootAnswear

if [ \"$rootAnswear\"=="S" ]
then
        sudo passwd root
fi

echo \"Would you like to change your ubuntu password? S/n\"

read ubuntuAnswear

if [ \"$ubuntuAnswear\"=="S" ]
then
        sudo passwd ubuntu
fi

nodejs --version

if [ $? -eq 1 ]
then
        sudo apt install nodejs -y

        echo "NodeJs installed"
        echo ""
fi

npm --version

if [ $? -eq 1 ]
then
        sudo apt install npm -y

        echo "NPM installed"
        echo ""
fi

docker --version
docker --version

if [ $? -eq 1 ]
then
        sudo apt install docker.io -y -q

        sudo systemctl enable docker

        sudo systemctl start docker

        echo "Docker installed (we already enabled and started)"
        echo ""
fi

echo \"Would you like to install java? S/n\"

read javaAnswear

if [ \"$javaAnswear\"=="S" ]

then
        echo \"Which java version do you want?\"

        read version

        sudo apt install openjdk-$version-jdk -y -q

        echo "Java $javaAnswear installed"
fi

echo \"Would you like to install GUI? S/n\"

read guiAnswear

if [ \"$guiAnswear\"=="S" ]

then
        sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y -q

        echo "GUI installed"
fi
