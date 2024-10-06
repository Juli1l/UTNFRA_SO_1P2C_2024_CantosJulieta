#!/bin/bash
echo "Particionamiento y montaje"
echo "Listado de comandos para hacer las particiones"
lsblk
sudo fdisk /dev/sdb

n
p
1
+1G

n
p
2
+1G

n
P
3
+1G

n
e
+1G

n
+1G

n
+1G

n
+1G

n
+1G

n
+1G

n
+1G

w

EOF

