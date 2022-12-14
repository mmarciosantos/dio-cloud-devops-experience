#!/binbash

#Cria os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Cria os usuários e adicona ao grupo GRP_ADM
useradd carlos -s /bin/bash -m -c "Carlos" -p $(openssl passwd carlos) -g GRP_ADM
useradd maria -s /bin/bash -m -c "Maria" -p $(openssl passwd maria) -g GRP_ADM
useradd joao -s /bin/bash -m -c "Joao" -p $(openssl passwd joao) -g GRP_ADM

#Cria os usuários e adicona ao grupo GRP_VEN
useradd debora -s /bin/bash -m -c "Debora" -p $(openssl passwd debora) -g GRP_VEN
useradd sebastiana -s /bin/bash -m -c "Sebastiana" -p $(openssl passwd sebastiana) -g GRP_VEN
useradd roberto -s /bin/bash -m -c "Roberto" -p $(openssl passwd roberto) -g GRP_VEN

#Cria os usuários e adicona ao grupo GRP_SEC
useradd josefina -s /bin/bash -m -c "Josefina" -p $(openssl passwd josefina) -g GRP_SEC
useradd amanda -s /bin/bash -m -c "Amanda" -p $(openssl passwd amanda) -g GRP_SEC
useradd rogerio -s /bin/bash -m -c "Rogerio" -p $(openssl passwd rogerio) -g GRP_SEC

#Cria os diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#Gerencia quais diretórios pertencem a quais grupos
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Gerencia as permissões de acesso de arquivos dentro dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
