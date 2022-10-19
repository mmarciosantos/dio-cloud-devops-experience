#!/bin/env bash

#Remove todos os usuários
for i in $(cat cria_usuarios.sh | grep useradd | cut -d " " -f2)
do
	userdel -r -f $i
done

#Remove todos os grupos
for i in $(cat cria_usuarios.sh | grep groupadd | cut -d " " -f2)
do
	groupdel $i
done

#Remove todos os diretórios
for i in $(cat cria_usuarios.sh | grep mkdir | cut -d " " -f2)
do
	rm -rf $i
done
