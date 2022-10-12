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

echo "Criando usuários..."
  

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123)  -c "Carlos Rocha" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123)  -c  "Maria da Silva" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123)  -c "João Santos" -G GRP_ADM


useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -c "Debora da Costa" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -c "Sebastiana da Invenção" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -c "Roberto da Silva" -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -c "Josefina Mattos " -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -c "Amanda Coelho" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -c "Rogério Pato" -G GRP_SEC


echo "Especificando donos e  permissões dos diretórios.."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo "...Finalizado..."



