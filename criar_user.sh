#!/bin/bash

echo "Criando  usuários do Sistema"

useradd guest10 -c "Usuário convidado" -s /bin/bash  -m -p $(openssl passwd -crypt senha)
passwd guest11 -e

useradd guest11 -c "Usuário convidado2" -s /bin/bash  -m -p $(openssl passwd -crypt senha)
passwd guest11 -e

useradd guest13 -c "Usuário convidado3" -s /bin/bash  -m -p $(openssl passwd -crypt senha)
passwd guest13 -e

useradd guest13 -c "Usuário convidado4" -s /bin/bash  -m -p $(openssl passwd -crypt senha)
passwd guest13 -e

echo "Finalizado"

