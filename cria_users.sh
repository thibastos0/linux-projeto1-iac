#!bin/sh
#!bin/bash

echo "Criando usuaŕios do sistema..."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest10 -e

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest11 -e

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest12 -e

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest12 -e

echo "Finalizado!!"
