#!/bin/bash

echo "criando o diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuario e adicionando no grupo"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd robertp -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC


echo "Todos os diretorio pertencerão ao usuario root"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "Dando permissão aos diretorios"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Finalizando o script"
