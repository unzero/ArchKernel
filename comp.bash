#!/bin/bash

#		SCRIPT PARA LA COMPILACION DEL KERNEL DE LINUX EN UN AMBIENTE ARCH	
#	       ESCRITO POR CIRO IVAN GARCIA LOPEZ - UNIVERSIDAD NACIONAL DE COLOMBIA

#INSTALACION DE PRELIMINARES
sudo pacman -S wget bc 

#INSTALACION Y CONFIGURACION DE YAOURT 
echo "[archlinuxfr]" | sudo tee -a /etc/pacman.conf
echo "SigLevel = Never" | sudo tee -a /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/\$arch" | sudo tee -a /etc/pacman.conf
sudo pacman -Sy yaourt
yaourt -S grub-customizer

#CREACION DEL ENTORNO DE TRABAJO
cd ~
mkdir kernel
cd kernel

#OBTENCION DEL KERNEL, LA VERSION QUE SE BAJARA ES: LINUX-3.14.4
wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.14.4.tar.xz

#DESCOMPRESION DEL KERNEL
tar xJf linux-3.14.4.tar.xz
cd linux-3.14.4

#PREPARANDO EL KERNEL PARA SU TRABAJO 
make mrproper 
#COPIA LA CONFIGURACION ACTUAL DEL SISTEMA
zcat /proc/config.gz > .config
#RECUERDEN QUE SOLO DEBEN GUARDAR Y SALIR, NO MODIFIQUEN NADA
make menuconfig

#COMPILANDO EL KERNEL, PROCESO DEMORADO, LA OPCION ES PARA QUE TENGA UN MEJOR RENDIMIENTO
#EL -j2 LO QUE BUSCA ES OPTIMIZAR EL PROCESADOR, RECOMIENDAN USAR -jN
#DE DONDE N ES EL NUMERO DE PROCESADORES CON LOS QUE CONTAMOS
make -j2

#COMPILACION DE LOS MODULOS DEL SISTEMA
sudo make modules_install

#COPIANDO EL KERNEL
#PARA CAMBIAR EL NOMBRE DEL KERNEL SE DEBERA PONER
#sudo cp -v arch/x86/boot/bzImage /boot/vmlinux-NOMBRE_DEL_KERNEL
#PARA MI CASO HE BAUTIZADO EL KERNEL del-abuelo
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-del-abuelo

#GENERANDO DISCO RAM INICIAL
#SI EL COMANDO FALLA PUEDE SER NECESARIO USAR EL SIGUIENTE COMANDO
#sudo mkinitcpio -p linux
sudo mkinitcpio -k 3.14.4-ARCH -c /etc/mkinitcpio.conf -g /boot/initramfs-del-abuelo

#COPIANDO 
sudo cp System.map /boot/System.map-del-abuelo

#FINALIZADO
#POR FAVOR CONTINUE CON LA GUIA.
