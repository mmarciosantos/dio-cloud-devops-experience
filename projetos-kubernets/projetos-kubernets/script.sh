#!/bin/bash

echo "Criando as imagens......"

docker build -t marciodossantos/projeto-backend:1.0 backend/.
docker build -t marciodossantos/projeto-database:1.0 database/.

echo "Realizando o push das imagens...."

docker push marciodossantos/projeto-backend:1.0
docker push marciodossantos/projeto-database:1.0

echo "Criando serviços no cluster kubernets...."

kubctl apply -f ./services.yml

echo "Criando os deployments....."

kubctl apply -f ./deployment.yml

