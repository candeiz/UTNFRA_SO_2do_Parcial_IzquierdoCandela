git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo apt update
sudo apt install ansible -y
sudo apt-get remove --purge docker docker-engine docker.io containerd runc
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -m 0755 -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker
lsblk
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
lsblk
sudo wipefs -a /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo fdisk -l
lsblk
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
mkdir -p /work/
sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
lsblk
ls -l
cd RTA_Examen_20241118/
ls l
ls -l
vim Punto_A.sh
cat Punto_A.sh
cd ..
ls -l
cd RTA_Examen_20241118/
ls -l
git add .
git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
git remote add origin git@github.com:candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
git init
git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
git add .
git commit -m"Punto A check"
s-
exit
ls -l
cd RTA_Examen_20241118/
ls -l
git init
git add .
git commit -m"Punto A check"
git config --global user.email "candeizquierdo15@gmail.com"
git config --global user.name "candeiz"
git commit -m"Punto A check"
git push origin main
git push origin master
git push origin main
git push origin master
git remote -v
git push origin master
git push origin main
git pull origin main
git push origin main
git credential reject
exit
cd RTA_Examen_20241118/
ls -l
git init
git push origin main
git add .
git commit -m"Punto A"
git push origin main
git push origin master
git pull origin master
git push origin master
git pull origin master
git pull --no-rebase origin master
git push origin master
git branch -d master
git init
git add .
git commit -m"Punto A"
git push origin master
git pull origin main
git push origin main
cd
clear
ls -l
cd RTA_Examen_20241118/
ls -l
cat Punto_A.sh
git init
git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
git remote -v
git add .
git commit -m"Punto A"
git push -u origin main
rm -rf .git
git init
git remote -v
git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
git add .
git commit -m"Punto A"
git push origin main
git branch
git push origin master
git credential-manager reject https://github.com
git push origin master
cd
exit
ls -l
cd RTA_Examen_20241118/
ls -l
cat Punto_B.sh
cd ..
ls -l
cd RTA_Examen_20241118/
ls -l
vim Punto_B.sh
cat Punto_B.sh
vim Punto_B.sh
exit
ls -l
cd RTA_Examen_20241118/
ls -l
cat Punto_B.sh
ls -l
chmod +x Punto_B.sh
ls -l
whoami
sudo -E bash /usr/local/bin/IzquierdoUser-groups.sh vagrant $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
ls -l /usr/local/bin/
find / -name "IzquierdoUser-groups.sh" 2>/dev/null
ls -l
cd ..
ls -l
cd RTA_Examen_20241118/
ls -l
./Punto_B.sh $(whoami) $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
ls -l $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
ls -l $HOME/repogit/
cd
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cd ..
cd RTA_Examen_20241118/
ls -l
./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat Punto_B.sh
vim Punto_B.sh
./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
sudo getent shadow vagrant
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
ls -l
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd ..
cd RTA_Examen_20241118/
ls -l
vim Punto_B.sh
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
vim Punto_B.sh
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
exi
exexexxxeff,oppe,ftttttbuybawbyftttcvbalad
exitexit
hjhexieetvaeeeeeeeeeeexicdxxjmxjxmcmxxxx,kfwpefittttttttetttppolllijiuibuibyruttmkjkkg
exit
cd RTA_Examen_20241118/
ls -lñ
ls -l
./Punto_A.sh
sudo ./Punto_A.sh
vim Punto_B.sh
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cd ..
cd RTA_Examen_20241118/
ls -l
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
sudo ./Punto_B.sh $(whoami) /$HOME/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
sudo ./Punto_B.sh $(whoami) /vagrant/UTN-FRA_SO_Examenes/202406/bash_script
vim Punto_B.sh
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
vim Lista_Usuarios.txt 
cd ..
cd RTA_Examen_20241118/
ls -l
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
vim Punto_B.sh
sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
git status
git add .
git commit -m"Punto B check"
git push origin master
git pull origin master
ls -l
cd RTA_Examen_20241118/
ls -l
git add .
git commit -m"Punto B"
git push origin master
chmod +x Punto_A.sh
ls -l
cat Punto_B.sh
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cat index.html 
vim index.html 
cd ..
cd RTA_Examen_20241118/
id
cd
id
docker
ls -l
cd RTA_Examen_20241118/
id
sudo usermod -aG docker vagrant
id
sudo usermod -a -G docker $(whoami)
id
grep docker /etc/group
exit
id
cd RTA_Examen_20241118/
sudo systemctl status docker
curl ifconfig.me
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
vim dockerfile
cd ..
ls -l
cd docker
ls -l
vim dockerfile 
docker build -t web1-IzquierdoCandela
docker images
ls -l
docker build -t web1-IzquierdoCandela .
docker images
docker build -t web1-izquierdocandela .
docker images
docker login -u candeiz
docker tag web1-izquierdocandela candeiz/web1-izquierdocandela
docker push candeiz/web1-izquierdocandela
vim run.sh
ls -l
chmod +x run.sh 
ls -l
./run.sh
docker ps
docker run -d -p 8080:80 candeiz/web1-izquierdocandela
curl localhost:8080
docker ps
ls -l
docker images
docker ps
docker stop 72caab6318f1 
docker run -d -p 8080:80 candeiz/web1-izquierdocandela
docker ps
curl http://localhost:8080
ip a
vim run.sh 
cat run.sh 
./run.sh
ls -l
vim dockerfile 
./run.sh
docker ps
docker stop 3304ab9e4eed 
docker ps
./run.sh
docker ps
curl http://localhost:8080
vim run.sh
cd
cd RTA_Examen_20241118/
ls -l
history >> Punto_C.sh
./Punto_C.sh
sudp ./Punto_C.sh
ls -l
chmod +x Punto_C.sh
ls -l
git add .
git commit -m"Punto c"
git push origin master
vim Punto_C.sh
git add .
git commit -m"Describo Punto C"
git push origin master
ls -l
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
cd ansible/
ls -l
cd roles
ls -l
cd 2do_parcial/
ls -l
cd ..
cd..
cd ..
pwd
ls -l
cd RTA_Examen_20241118/
ls -l
cd
pwd
ls -l
cd RTA_Examen_20241118/
ls -l
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd ansible/
cd roles/
cd 2do_parcial/
ls -l
cd t
cd tasks/
ls -l
pwd
cd ..
ls -l
cd
pwd
ls -l
cd RTA_Examen_20241118/
ls -l
vim Punto_D.sh
chmod +x Punto_D.sh
ls -l
./Punto_D.sh
vim Punto_D.sh
cd
ls -l
cd UTNFRA_SO_Examenes/
ls -l
cd ..
rmdir UTNFRA_SO_Examenes/
rmdir -r UTNFRA_SO_Examenes/
rm -r UTNFRA_SO_Examenes/
ls -l
rm -rf UTNFRA_SO_Examenes/
sudo rm -rf UTNFRA_SO_Examenes/
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd
cd RTA_Examen_20241118/
ls -l
vim Punto_D.sh
./Punto_D.sh
vim Punto_D.sh
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd ansible/
ls -l
vim playbook.yml 
cat playbook.yml 
cd inventory/
ls -l
cat hosts
cd 
cd RTA_Examen_20241118/
ls -l
git add .
git commit -m"Punto D"
git push origin master
exit
cd RTA_Examen_20241118/
ls -l
git add .
git commit -m"Punto D"
git push origin master
git pull origin master
git push origin master
vagrant@VMLVM:~/RTA_Examen_20241118$ git push origin master
Username for 'https://github.com': candeiz
Password for 'https://candeiz@github.com':
To https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
error: failed to push some refs to 'https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
git add .
git commit -m"Punto D"
git push origin master
git pul origin master
git pull origin master
git pull --rebase origin master
git push origin master
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
vim index.html 
docker images
cd
cd RTA_Examen_20241118/
sudo fdisk -l
lsblk
ls -l
vim Punto_A.sh
sudo fdisk -l
ls -l
vim Punto_B.sh
cd
ls -l
git clone https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
ls -l
cd UTNFRA_SO_2do_Parcial_IzquierdoCandela/
ls -l
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406 /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoCandela/
cp -r /home/vagrant/RTA_Examen_$(date +%Y%m%d) /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoCandela/
history -a
ls -l
cd RTA_Examen_20241118/
ls -l
history -a
ls -l
cd ..
ls -l
cd 202406
ls -l
cd ..
ls -l
cd
pwd
ls -a ~
ls -l .bash_history
cd .bash_history
ls -l
cd UTNFRA_SO_2do_Parcial_IzquierdoCandela/
ls -l
ls -a ~
cd
