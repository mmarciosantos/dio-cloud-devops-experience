#!/bin/env bash

for i in $(cat cria_usuarios.sh | grep useradd | cut -d " " -f2)
do
	userdel -r -f $i
done

for i in $(cat cria_usuarios.sh | grep groupadd | cut -d " " -f2)
do
	groupdel $i
done

for i in $(cat cria_usuarios.sh | grep mkdir | cut -d " " -f2)
do
	rm -rf $i
done
