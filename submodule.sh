#!/bin/sh
echo ""
echo "This is only for MastaG, Persian Prince, Hains and moham96 with push access"
echo ""
echo "Stage 1: git pull for new changes"
echo ""
cd meta-amlogic
echo "Checking out meta-amlogic develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-ax
echo "Checking out meta-ax develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-azbox
echo "Checking out meta-azbox develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-blackbox
echo "Checking out meta-blackbox develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-ceryon
echo "Checking out meta-ceryon develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-cube
echo "Checking out meta-cube develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-dags
echo "Checking out meta-dags develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-dinobot
echo "Checking out meta-dinobot develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-dream
echo "Checking out meta-dream develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-ebox
echo "Checking out meta-ebox develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-entwopia
echo "Checking out meta-entwopia develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-fulan
echo "Checking out meta-fulan develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-ini
echo "Checking out meta-ini develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-ixuss
echo "Checking out meta-ixuss develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-octagon
echo "Checking out meta-octagon develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-odin
echo "Checking out meta-odin develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-protek
echo "Checking out meta-protek develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-raspberrypi
echo "Checking out meta-raspberrypi develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-tiviar
echo "Checking out meta-tiviar develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-tripledot
echo "Checking out meta-tripledot develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
cd meta-xcore
echo "Checking out meta-xcore develop branch:"
git checkout develop
git pull
echo -e "\n"
cd ..
echo "Stage 2: git add for new changes"
echo ""
git add meta-*
git commit --dry-run
read -p "The above changes will be committed and pushed, [A]bort [P]roceed: " choice
if [[ $choice == "P" || $choice == "p" ]];then
	git commit -S -m "Update submodules"
	echo "Stage 3: git push for new changes"
	echo ""
	git push
	echo "Done: all git repositories got updated to their latest versions!"
	echo ""
else 
	exit 0
fi

