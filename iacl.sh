#!/bin/bash
#!/bin/sh

echo "Criando diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios:"
¨
useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd joao -e


useradd debora -c "Debora Souza" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Souza" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Souza" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Santos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda Santos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio Santos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd rogerio -e

echo "permissões dos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777/publico

echo "Finalizado!"
