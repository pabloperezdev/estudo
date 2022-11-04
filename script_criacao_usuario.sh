#/bin/bash



echo "criando grupos"
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC


echo "criando usuario"

useradd carlos -s /bin/bash/ -G GRP_ADM -m -p $(openssl passwd -crypt 'teste')
useradd maria -s /bin/bash/ -G GRP_ADM -m -p $(openssl passwd -crypt 'teste')
useradd joao_ -s /bin/bash/ -G GRP_ADM -m -p $(openssl passwd -crypt 'teste')

useradd debora -s /bin/bash/ -G GRP_VEN -m -p $(openssl passwd -crypt 'teste')
useradd sebastiana -s /bin/bash/ -G GRP_VEN -m -p $(openssl passwd -crypt 'teste')
useradd roberto -s /bin/bash/ -G GRP_VEN -m -p $(openssl passwd -crypt 'teste')


useradd josefina -s /bin/bash/ -G GRP_SEC -m -p $(openssl passwd -crypt 'teste')
useradd amanda -s /bin/bash/ -G GRP_SEC -m -p $(openssl passwd -crypt 'teste')
useradd rogerio -s /bin/bash/ -G GRP_SEC -m -p $(openssl passwd -crypt 'teste')

echo "Criando diretorios"

mkdir /home/publico/
mkdir /home/adm/
mkdir /home/ven/
mkdir /home/sec/

echo "Setando permissoes"

chown root:GRP_ADM /home/adm/
chown root:GRP_VEN /home/ven/
chown root:GRP_SEC /home/sec/

chown 770 /home/adm/
chown 770 /home/ven/
chown 770 /home/sec/
chown 777 /home/publico/  


