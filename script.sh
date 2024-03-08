#!/bin/bash
echo "INICIANDO SCRIPT"
echo "CRIANDO DIRETORIOS"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "DIRETORIOS CRIADOS"

echo "CRIANDO GRUPOS"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "GRUPOS CRIADOS"

echo "ALTERANDO PROPRIETARIO"
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "PROPRIETARIO ALTERADO"
echo "ALTERANDO PERMISSOES"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "PERMISSOES ALTERADAS"

echo "CRIANDO USUARIOS"

useradd carlos -c "carlos silva" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd maria -c "maria clara" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd joao -c "joao carvalho" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd debora -c "debora nascimento" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd sebastiana -c "sebastiana silva" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd roberto -c "roberto pereira" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd josefina -c "josefina goncalves" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd amanda -c "amanda valente" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
useradd rogerio -c "rogerio vilela" -m -s /bin/bash -p $(openssl passwd -5 Senha123)
passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "USUARIOS CRIADOS"

echo "INCLUINDO USUARIOS NOS GRUPOS"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "USUARIOS INCLUIDOS NOS GRUPOS"
echo "SCRIPT FINALIZADO"

