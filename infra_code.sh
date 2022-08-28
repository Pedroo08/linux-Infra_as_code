#!/bin/bash

echo "Configurando..."

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo"Criando usuários..."

useradd carlos -m -s /bin/bash -c "Carlos Rocha" -G GRP_ADM
echo"Criando senha de Carlos"
passwd carlos 

useradd maria -m -s /bin/bash -c "Maria da Silva" -G GRP_ADM
echo"Criando senha de maria"
passwd maria

useradd joao -m -s /bin/bash -c "João Santos" -G GRP_ADM
echo"Criando senha de joao"
passwd  joao



useradd debora -m -s /bin/bash -c "Debora da Costa" -G GRP_VEN
echo"Criando senha de debora"
passwd debora

useradd sebastiana -m -s /bin/bash -c "Sebastiana da Invenção" -G GRP_VEN
echo"Criando senha de sebastiana"
passwd sebastiana

useradd roberto -m -s /bin/bash -c "Roberto da Silva" -G GRP_VEN
echo"Criando senha de roberto"
passwd roberto



useradd josefina -m -s /bin/bash -c "Josefina Mattos " -G GRP_SEC
echo"Criando senha de josefina"
passwd josefina

useradd amanda -m -s /bin/bash -c "Amanda Coelho" -G GRP_SEC
echo"Criando senha de Amanda"
passwd amanda

useradd rogerio -m -s /bin/bash -c "Rogério Pato" -G GRP_SEC
echo"Criando senha de rogerio"
passwd rogerio


echo "Especificando permissões dos diretórios.."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo"...Finalizado..."



