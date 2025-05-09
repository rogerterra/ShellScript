#!/usr/bin/env bash

VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
  echo "São iguais."
fi

#Outra forma de realizar:
if [[ "$VAR" = "$VAR2" ]]
then
  echo "São iguais."
fi

#Outra forma limpa:
[ "$VAR" = "$VAR2" ] && echo "São iguais."

echo " "
echo "-------------------------------------------------------------------------"
echo " "

#Tarefa

echo "Parâmetro 1: $1"

if [[ "$1" -gt 10 ]]; then
  echo "Nome do Script: $0"
  echo "PID: $$"
fi
