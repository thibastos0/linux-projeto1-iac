#apt install samba -y

echo "criando pasta publica"

mkdir publica
chmod 777 publica/

echo "necessario ter editado o smb.conf conforme:"
echo "nano /etc/samba/smb.conf"
echo "após editar com:"
echo "[publica]"
echo ""
echo "path = /disk2/publica"
echo "writable = yes"
echo "guest ok = yes"
echo "guest only = yes"

echo "para atualizar o conf"
echo "systemctl restart smbd"
echo "systemctl status smbd //para verificar se está ativo"
echo "systemctl enable smbd //manter ativo"


