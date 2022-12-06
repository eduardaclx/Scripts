#!bin/bash

echo \"Would you like to update and upgrade your machine? s/n\"

read upAnswear

if [ \"$upAnswear\" == \"s\" ]
then
        sudo apt update && sudo apt upgrade -y -q

        clear
        
        echo "Upgrade complete!"
        
fi

echo \"Would you like to change your root password? s/n\"

read rootAnswear

if [ \"$rootAnswear\" == \"s\" ]
then
        sudo passwd root
fi

echo \"Would you like to change your ubuntu password? S/n\"

read ubuntuAnswear

if [ \"$ubuntuAnswear\" == \"s\" ]
then
        sudo passwd ubuntu
fi

echo \"Would you like to install/upgrade NodeJs? s/n\"

read nodeAnswear

if [ \"$nodeAnswear\" == \"s\" ]
then
        sudo apt install nodejs -y

        clear
        
        echo \"NodeJs installed/updated\"
        
fi

echo \"Would you like to install/upgrade NPM? s/n\"

read npmAnswear

if [ \"$npmAnswear\" == \"s\" ]

then
	sudo apt install npm -y

        clear
        
        echo \"NPM installed/updated\"
        
fi

echo \"Would you like to install/upgrade Docker? s/n\"

read dockerAnswear

if [ \"$dockerAnswear\" == \"s\" ]

then

	sudo apt install docker.io -y -q

        sudo systemctl enable docker

        sudo systemctl start docker

        clear
        
        echo \"Docker installed - we already enabled and started -\"
fi

echo \"Would you like to install java? s/n\"

read javaAnswear

if [ \"$javaAnswear\" == \"s\" ]

then
        echo \"Which java version do you want?\"

        read version

        sudo apt install openjdk-$version-jdk -y -q

        clear
        
        echo \"Java $javaAnswear installed\"
fi

echo \"Would you like to install GUI? s/n\"

read guiAnswear

if [ \"$guiAnswear\" == \"s\" ]

then
        sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y -q

        clear
        
        echo \"GUI installed\"
        
fi
