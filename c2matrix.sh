#!/bin/bash
while :; do
echo "Welcome to C2 Matrix Automation"
echo "Create by Joas Antonio"
echo "Based on C2 Matrix and Cracking The Perimeter Framework"
echo "Version 1.0 - Beta"
echo ""
echo "ibombshell, covenant, evilosx, fudgec2, godoh, kodiac, merlinc2, poshc2, silent trinity, empire and trevorc2"
echo ""
echo "1 - Download Repositorys"
echo "2 - Install Requeriments"
echo "3 - Connect Command and Control Server"
echo ""
read -p "Select Options: " option
echo ""
if [ $option -eq 1 ];
then
	echo "Download Repositorys"
	echo ""
	echo "Bombshell"
	git clone https://github.com/ElevenPaths/ibombshell
        echo ""
	echo "Covenant"
	git clone https://github.com/cobbr/Covenant
	echo ""
	echo "EvilOSX"
	git clone https://github.com/Marten4n6/EvilOSX
	echo ""
	echo "Fudge C2"
	git clone https://github.com/Ziconius/FudgeC2
	echo ""
	echo "Godoh"
	git clone https://github.com/sensepost/goDoH
	echo ""
	echo "Kodiac"
	git clone https://github.com/zerosum0x0/koadic
	echo ""
	echo "Merlinc2"
	git clone https://github.com/Ne0nd0g/merlin
	echo ""
	echo "Poshc2"
	git clone https://github.com/nettitude/PoshC2
	echo ""
	echo "Silent Trinity"
	git clone https://github.com/byt3bl33d3r/SILENTTRINITY
	echo ""
	echo "Empire"
	apt-get update && apt install powershell-empire
	echo ""
	echo "Trevorc2"
	git clone https://github.com/CyberSecurityUP/Trevorfuscation
	echo ""
elif [ $option -eq 2 ];
then
	echo "Install Requeriments"
	echo ""
	echo "Select C2 Requeriments Install"
	echo "Select the order number from the home page list, ex: 1 - ibombshell"
	read -p "Select Option: " c2option
	if [ $c2option -eq 1 ];
	then
		echo "ibombshell"
		cd ibombshell/ibombshell\ c2/
		pip install -r requirements.txt 
		echo ""
	elif [ $c2option -eq 2 ];
	then
		echo "Covenant"
		mkdir covenant2
		cd covenant2
		wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
		sudo dpkg -i packages-microsoft-prod.deb
		sudo apt-get update
		sudo apt-get install apt-transport-https
		sudo apt-get update
		sudo apt-get install dotnet-sdk-2.2
		git clone --recurse-submodules https://github.com/cobbr/Covenant
	elif [ $c2option -eq 3 ];
	then
		echo "EvilOSX"
		cd EvilOSX
		sudo pip install -r requirements.txt
		python start.py
	elif [ $c2option -eq 4 ];
	then
		echo "FudgeC2"
		cd FudgeC2/FudgeC2
		sudo pip3 install -r requirements.txt
	elif [ $c2option -eq 5 ];
	then
		echo "Godoh"
		sudo apt-get update
		sudo apt install -y golang
		cd goDoH
		go build
	elif [ $c2option -eq 6 ];
	then
		echo "Kodiac"
		cd koadic
		pip3 install -r requirements.txt
	elif [ $c2option -eq 7 ];
	then
		echo "Merlinc2"
		mkdir Merlinc2
		wget https://github.com/Ne0nd0g/merlin/releases/latest/download/merlinServer-Linux-x64.7z
		7z x merlinServer-Linux-x64.7z
		sudo ./merlinServer-Linux-x64
	elif [ $c2option -eq 8 ];
	then
		echo "Poshc2"
		cd "PoshC2"
		curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2/master/Install.sh | sudo bash
		sudo ./Install.sh
		curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2/master/Install.sh | sudo bash -s -- -p /root/PoshC2
		curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2/dev/Install.sh | sudo bash -s -- -b dev
	elif [ $c2option -eq 9 ];
	then
		echo "Silent Trinity"
		cd SILENTTRINITY
		pip3 install --user pipenv && pipenv install && pipenv shell
	elif [ $c2option -eq 10 ];
	then
		echo ""
		echo "Upgrade Empire"
		apt-get update && apt install powershell-empire
	elif [ $c2option -eq 11 ];
	then
		echo ""
		echo "Trevorc2 + Trevorfuscation"
		cd Trevorfuscation/ 
		cd PyFuscation/  
        	pip install -r requirements.txt 
        	cd ..
        	cd trevorc2/ 
        	pip install -r requirements.txt 
        	echo ""
	else
		echo "Finish"
	fi
elif [ $option -eq 3 ];
then
	echo ""
	echo "Obfuscation and Server Connect"
	echo "1 - ibombshell"
	echo "2 - Covenant"
	echo "3 - EvilOSX"
	echo "4 - FudgeC2"
	echo "5 - GoDoH"
	echo "6 - Kodiac"
	echo "7 - MerlinC2"
	echo "8 - Poshc2"
	echo "9 - SILENTTRINITY"
	echo "10 - Powershell Empire"
	echo "11 - Trevorc2 + Trevorfuscation"
	echo ""
	read -p "Select Command and Control: " select2
	echo ""
	if [ $select2 -eq 1 ]
	then
		echo ""
		echo "ibombshell"
                cd ibombshell/ibombshell\ c2/
		python3 ibombshell.py
	elif [ $select2 -eq 2 ]
	then
		echo ""
		echo "Covenant Connect"
		cd Covenant/Covenant
		dotnet build
		dotnet run
		echo ""
	elif [ $select2 -eq 3 ];
	then
		echo ""
		echo "EvilOSX"
		cd EvilOSX
		python start.py --builder
		python start.py --cli --port 1337
	elif [ $select2 -eq 4 ];
	then
		echo ""
		echo "FudgeC2"
                cd FudgeC2/FudgeC2
		sudo python3 Controller.py
		echo "admin:letmein"
	elif [ $select2 -eq 5 ];
	then
		echo ""
		echo "GoDoH"
		echo "See goDoH documentation"
		echo "https://github.com/sensepost/goDoH"
		echo ""
	elif [ $select2 -eq 6 ];
	then
		echo ""
		echo "Kodiac"
		cd kodiac
		.\kodiac
	elif [ $select2 -eq 7 ];
	then
		echo ""
		echo "Merlinc2"
		cd Merlinc2
		sudo ./merlinServer-Linux-x64
	elif [ $select2 -eq 8 ];
	then
		echo ""
		echo "PoshC2"
		cd PoshC2
		posh-server
	elif [ $select2 -eq 9 ];
	then
		echo ""
		echo "SILENTTRINITY"
		cd SILENTTRINITY
		python st.py && python3 st.py
	elif [ $select2 -eq 10 ];
	then
		echo ""
		echo "Powershell - Empire"
		echo "Execute: powershell-empire"
		echo ""
	elif [ $select2 -eq 11 ];
	then
		echo ""
		cd Trevorfuscation/
		chmod +x trevorfuscation.sh
		./trevorfuscation.sh
	else
		echo "In progress..."
	fi
fi
done
