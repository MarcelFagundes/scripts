#!/bin/bash

echo "Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários no sistema..."

useradd carlos	    -m   -s /bin/bash  -p $(openssl passwd -crypt carlos123)  -G GRP_ADM
useradd maria	      -m   -s /bin/bash  -p $(openssl passwd -crypt maria123) -G GRP_ADM
useradd joao	      -m   -s /bin/bash  -p $(openssl passwd -crypt joao123) -G GRP_ADM

useradd debora	    -m   -s /bin/bash  -p $(openssl passwd -crypt debora123)  -G GRP_VEN
useradd sebastiana  -m   -s /bin/bash  -p $(openssl passwd -crypt sebastiana123) -G GRP_VEN
useradd roberto	    -m   -s /bin/bash  -p $(openssl passwd -crypt roberto123) e  -G GRP_VEN

useradd josefina    -m   -s /bin/bash  -p $(openssl passwd -crypt josefina123) -G GRP_SEC
useradd amanda      -m   -s /bin/bash  -p $(openssl passwd -crypt amanda123) -G GRP_SEC
useradd rogerio     -m   -s /bin/bash  -p $(openssl passwd -crypt rogerio123)  -G GRP_SEC

echo "Adicionando permissões aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
