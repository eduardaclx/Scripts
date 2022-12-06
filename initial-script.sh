#!bin/bash

echo \"Would you like to update and upgrade your machine? S/n\"

read upAnswear

if [ \"$upAnswear\"=="S" ]
then
        sudo apt update && sudo apt upgrade -y -q

        clear
        
        echo "Upgrade complete!"
        
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

echo \"Would you like to install/upgrade NodeJs? S/n\"

read nodeAnswear

if [ \"$nodeAnswear\"=="S" ]
then
        sudo apt install nodejs -y

        clear
        
        echo \"NodeJs installed/updated\"
        
fi

echo \"Would you like to install/upgrade NPM? S/n\"

read npmAnswear

if [ \"$npmAnswear\"=="S" ]
        sudo apt install npm -y

        clear
        
        echo \"NPM installed/updated\"
        
fi

echo \"Would you like to install/upgrade Docker? S/n\"

read dockerAnswear

if [ \"$dockerAnswear\"=="S" ]
        sudo apt install docker.io -y -q

        sudo systemctl enable docker

        sudo systemctl start docker

        clear
        
        echo \"Docker installed (we already enabled and started)\"
fi

echo \"Would you like to install java? S/n\"

read javaAnswear

if [ \"$javaAnswear\"=="S" ]

then
        echo \"Which java version do you want?\"

        read version

        sudo apt install openjdk-$version-jdk -y -q

        clear
        
        echo \"Java $javaAnswear installed\"
fi

echo \"Would you like to install GUI? S/n\"

read guiAnswear

if [ \"$guiAnswear\"=="S" ]

then
        sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y -q

        clear
        
        echo \"GUI installed\"
        
fi
