#!/bin/bash

# Crear directorios necesarios
sudo mkdir -p /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates

# Crear archivos de plantilla para los datos
sudo tee /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2 << EOF
Nombre: {{ student_name }}
Apellido: {{ student_lastName }}
Division: {{ student_class }}
EOF

# Crear archivos de plantilla para los datos del equipo
sudo tee /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2 << EOF
Ip: {{ pc_ip }}
Descripción: {{ pc_distribution }}
Cantidad_de_cores: {{ pc_cores }}
EOF

# Modificar el archivo main.yml para incluir las tareas
sudo tee -a /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml << EOF
- name: Create required directories
  file:
    path: "{{ item }}"
    state: directory
    mode: '0755'
  with_items:
    - /tmp/2do_parcial/alumno
    - /tmp/2do_parcial/equipo

- name: Create student file data
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    student_name: "Candela"
    student_lastName: "Izquierdo"
    student_class: "115"

- name: Obtener información del equipo
  set_fact:
    pc_ip: "{{ lookup('pipe', 'curl -s ifconfig.me') }}"
    pc_distribution: "{{ lookup('pipe', 'lsb_release -d | cut -f2') }}"
    pc_cores: "{{ lookup('pipe', 'nproc') }}"

- name: Create pc file data
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    pc_ip: "{{ pc_ip }}"
    pc_distribution: "{{ pc_distribution }}"
    pc_cores: "{{ pc_cores }}"

- name: Set permissions 2PSupervisores
  lineinfile:
    path: /etc/sudoers
    state: present
    regexp: '^%2PSupervisores'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
EOF

# Ejecutar el playbook de Ansible
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible
sudo ansible-playbook -i inventory/hosts playbook.yml
