#!/bin/bash

# Particionar discos

sudo fdisk /dev/sdc

n

p





+20M

t

1

8e

wq

sudo fdisk /dev/sdc

n

p





+1.5G

t

2

8e

wq

sudo fdisk /dev/sdd

n

p





+700M

t

82

wq

# Crear volumenes fisicos (PV)

sudo wipefs -a /dev/sdc1 /dev/sdc2 /dev/sdd1

sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1

sudo pvs

# Crear grupos de volumenes (VG)

sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1

sudo vgs

# Crear volumenes logicos (LV)

sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

# Formatear LV

sudo fdisk -l

sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

# Montar LV

sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/

sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap

