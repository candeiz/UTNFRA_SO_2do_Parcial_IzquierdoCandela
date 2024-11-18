    1  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
    2  ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
    3  source ~/.bashrc
    4  sudo apt update
    5  sudo apt install ansible -y
    6  sudo apt-get remove --purge docker docker-engine docker.io containerd runc
    7  sudo apt-get autoremove -y
    8  sudo apt-get update
    9  sudo apt-get install ca-certificates curl gnupg lsb-release -y
   10  sudo mkdir -m 0755 -p /etc/apt/keyrings
   11  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   12  echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   13  sudo apt-get update
   14  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   15  docker
   16  lsblk
   17  sudo fdisk /dev/sdc
   18  sudo fdisk /dev/sdd
   19  lsblk
   20  sudo wipefs -a /dev/sdc1 /dev/sdc2 /dev/sdd1
   21  sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
   22  sudo pvs
   23  sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
   24  sudo vgcreate vg_temp /dev/sdd1
   25  sudo lvcreate -L 5M vg_datos -n lv_docker
   26  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
   27  sudo lvcreate -L 512M vg_temp -n lv_swap
   28  sudo fdisk -l
   29  lsblk
   30  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
   31  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
   32  sudo mkswap /dev/mapper/vg_temp-lv_swap
   33  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   34  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   35  mkdir -p /work/
   36  sudo mkdir -p /work/
   37  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   38  sudo swapon /dev/mapper/vg_temp-lv_swap
   39  lsblk
   40  ls -l
   41  cd RTA_Examen_20241118/
   42  ls l
   43  ls -l
   44  vim Punto_A.sh
   45  cat Punto_A.sh
   46  cd ..
   47  ls -l
   48  cd RTA_Examen_20241118/
   49  ls -l
   50  git add .
   51  git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
   52  git remote add origin git@github.com:candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
   53  git init
   54  git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
   55  git add .
   56  git commit -m"Punto A check"
   57  s-
   58  exit
   59  ls -l
   60  cd RTA_Examen_20241118/
   61  ls -l
   62  git init
   63  git add .
   64  git commit -m"Punto A check"
   65  git config --global user.email "candeizquierdo15@gmail.com"
   66  git config --global user.name "candeiz"
   67  git commit -m"Punto A check"
   68  git push origin main
   69  git push origin master
   70  git push origin main
   71  git push origin master
   72  git remote -v
   73  git push origin master
   74  git push origin main
   75  git pull origin main
   76  git push origin main
   77  git credential reject
   78  exit
   79  cd RTA_Examen_20241118/
   80  ls -l
   81  git init
   82  git push origin main
   83  git add .
   84  git commit -m"Punto A"
   85  git push origin main
   86  git push origin master
   87  git pull origin master
   88  git push origin master
   89  git pull origin master
   90  git pull --no-rebase origin master
   91  git push origin master
   92  git branch -d master
   93  git init
   94  git add .
   95  git commit -m"Punto A"
   96  git push origin master
   97  git pull origin main
   98  git push origin main
   99  cd
  100  clear
  101  ls -l
  102  cd RTA_Examen_20241118/
  103  ls -l
  104  cat Punto_A.sh
  105  git init
  106  git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
  107  git remote -v
  108  git add .
  109  git commit -m"Punto A"
  110  git push -u origin main
  111  rm -rf .git
  112  git init
  113  git remote -v
  114  git remote add origin https://github.com/candeiz/UTNFRA_SO_2do_Parcial_IzquierdoCandela.git
  115  git add .
  116  git commit -m"Punto A"
  117  git push origin main
  118  git branch
  119  git push origin master
  120  git credential-manager reject https://github.com
  121  git push origin master
  122  cd
  123  exit
  124  ls -l
  125  cd RTA_Examen_20241118/
  126  ls -l
  127  cat Punto_B.sh
  128  cd ..
  129  ls -l
  130  cd RTA_Examen_20241118/
  131  ls -l
  132  vim Punto_B.sh
  133  cat Punto_B.sh
  134  vim Punto_B.sh
  135  exit
  136  ls -l
  137  cd RTA_Examen_20241118/
  138  ls -l
  139  cat Punto_B.sh
  140  ls -l
  141  chmod +x Punto_B.sh
  142  ls -l
  143  whoami
  144  sudo -E bash /usr/local/bin/IzquierdoUser-groups.sh vagrant $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
  145  ls -l /usr/local/bin/
  146  find / -name "IzquierdoUser-groups.sh" 2>/dev/null
  147  ls -l
  148  cd ..
  149  ls -l
  150  cd RTA_Examen_20241118/
  151  ls -l
  152  ./Punto_B.sh $(whoami) $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
  153  ls -l $HOME/repogit/UTNFRA_SO_2do_Parcial_IzquierdoCandela/202406/bash_script/Lista_Usuarios.txt
  154  ls -l $HOME/repogit/
  155  cd
  156  ls -l
  157  cd UTN-FRA_SO_Examenes/
  158  ls -l
  159  cd 202406
  160  ls -l
  161  cd bash_script/
  162  ls -l
  163  cd ..
  164  cd RTA_Examen_20241118/
  165  ls -l
  166  ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  167  cat Punto_B.sh
  168  vim Punto_B.sh
  169  ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  170  ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  171  sudo getent shadow vagrant
  172  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  173  ls -l
  174  cd ..
  175  ls -l
  176  cd UTN-FRA_SO_Examenes/
  177  ls -l
  178  cd 202406
  179  ls -l
  180  cd bash_script/
  181  ls -l
  182  cat Lista_Usuarios.txt 
  183  cd ..
  184  cd RTA_Examen_20241118/
  185  ls -l
  186  vim Punto_B.sh
  187  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  188  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  189  vim Punto_B.sh
  190  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  191  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  192  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  193  exi
  194  exexexxxeff,oppe,ftttttbuybawbyftttcvbalad
  195  exitexit
  196  hjhexieetvaeeeeeeeeeeexicdxxjmxjxmcmxxxx,kfwpefittttttttetttppolllijiuibuibyruttmkjkkg
  197  exit
  198  cd RTA_Examen_20241118/
  199  ls -lñ
  200  ls -l
  201  ./Punto_A.sh
  202  sudo ./Punto_A.sh
  203  vim Punto_B.sh
  204  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  205  cd ..
  206  ls -l
  207  cd UTN-FRA_SO_Examenes/
  208  ls -l
  209  cd 202406
  210  ls -l
  211  cd bash_script/
  212  ls -l
  213  cd ..
  214  cd RTA_Examen_20241118/
  215  ls -l
  216  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  217  sudo ./Punto_B.sh $(whoami) /$HOME/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  218  sudo ./Punto_B.sh $(whoami) /vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  219  vim Punto_B.sh
  220  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script
  221  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406
  222  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/
  223  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  224  cd ..
  225  cd UTN-FRA_SO_Examenes/
  226  ls -l
  227  cd 202406
  228  ls -l
  229  cd bash_script/
  230  ls -l
  231  vim Lista_Usuarios.txt 
  232  cd ..
  233  cd RTA_Examen_20241118/
  234  ls -l
  235  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  236  vim Punto_B.sh
  237  sudo ./Punto_B.sh $(whoami) /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  238  git status
  239  git add .
  240  git commit -m"Punto B check"
  241  git push origin master
  242  git pull origin master
  243  ls -l
  244  cd RTA_Examen_20241118/
  245  ls -l
  246  git add .
  247  git commit -m"Punto B"
  248  git push origin master
  249  chmod +x Punto_A.sh
  250  ls -l
  251  cat Punto_B.sh
  252  cd ..
  253  ls -l
  254  cd UTN-FRA_SO_Examenes/
  255  ls -l
  256  cd 202406
  257  ls -l
  258  cd docker
  259  ls -l
  260  cat index.html 
  261  vim index.html 
  262  cd ..
  263  cd RTA_Examen_20241118/
  264  id
  265  cd
  266  id
  267  docker
  268  ls -l
  269  cd RTA_Examen_20241118/
  270  id
  271  sudo usermod -aG docker vagrant
  272  id
  273  sudo usermod -a -G docker $(whoami)
  274  id
  275  grep docker /etc/group
  276  exit
  277  id
  278  cd RTA_Examen_20241118/
  279  sudo systemctl status docker
  280  curl ifconfig.me
  281  cd ..
  282  ls -l
  283  cd UTN-FRA_SO_Examenes/
  284  ls -l
  285  cd 202406
  286  ls -l
  287  cd docker
  288  ls -l
  289  vim dockerfile
  290  cd ..
  291  ls -l
  292  cd docker
  293  ls -l
  294  vim dockerfile 
  295  docker build -t web1-IzquierdoCandela
  296  docker images
  297  ls -l
  298  docker build -t web1-IzquierdoCandela .
  299  docker images
  300  docker build -t web1-izquierdocandela .
  301  docker images
  302  docker login -u candeiz
  303  docker tag web1-izquierdocandela candeiz/web1-izquierdocandela
  304  docker push candeiz/web1-izquierdocandela
  305  vim run.sh
  306  ls -l
  307  chmod +x run.sh 
  308  ls -l
  309  ./run.sh
  310  docker ps
  311  docker run -d -p 8080:80 candeiz/web1-izquierdocandela
  312  curl localhost:8080
  313  docker ps
  314  ls -l
  315  docker images
  316  docker ps
  317  docker stop 72caab6318f1 
  318  docker run -d -p 8080:80 candeiz/web1-izquierdocandela
  319  docker ps
  320  curl http://localhost:8080
  321  ip a
  322  vim run.sh 
  323  cat run.sh 
  324  ./run.sh
  325  ls -l
  326  vim dockerfile 
  327  ./run.sh
  328  docker ps
  329  docker stop 3304ab9e4eed 
  330  docker ps
  331  ./run.sh
  332  docker ps
  333  curl http://localhost:8080
  334  vim run.sh
  335  cd
  336  cd RTA_Examen_20241118/
  337  ls -l
  338  history >> Punto_C.sh
