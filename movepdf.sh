#!/bin/bash
read -p "Entre com o diretorio" diretorio
read -p "Entre com a pasta" pasta
read -p "Entre com a extensao" extensao
if [ -z "$diretorio" ] || [ -z "$pasta" ] || [ -z "$extensao" ]
then
	echo "Parametros invalidos"
else 
	if [ -d "$pasta" ]
	then
		mv -f $(find . -name  "*.$extensao")  "${diretorio}"/"${pasta}"
	else
		mkdir $pasta && mv -f $(find . -name "*.$extensao") "${diretorio}"/"${pasta}"
	fi
fi	
