punto c
#!/bin/bash

PASSWORD="osboxes.org"  #contraseña
HASHED_PASSWORD=$(openssl passwd  -6 "$PASSWORD") #hash de la contraseña

# Crear grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Agregar usuarios con la contraseña
sudo useradd -m -p "$HASHED_PASSWORD" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -p "$HASHED_PASSWORD" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -p "$HASHED_PASSWORD" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -p "$HASHED_PASSWORD" -G p1c2_2024_gProfesores p1c2_2024_P1



#  permisos 
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_1    # rwxr-x---

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 770 /Examenes-UTN/alumno_2     # rwxrwx---

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3     # rwx------

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores     # rwxrwxr-x

sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar1.txt"
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar1.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar1.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar1.txt

