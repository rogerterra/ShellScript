#!/usr/bin/env bash

NOME="Rog"

echo "$NOME"

NUMERO_1=24
NUMERO_2=45

TOTAL=$((NUMERO_1+NUMERO_2))

echo "$TOTAL"

SAIDA_CAT=$(cat /etc/passwd | grep rmaria)

echo "$SAIDA_CAT"

echo " "
echo "----------------------------------------------------------"
echo " "

echo "Parametro 1: $1"
echo "Parametro 1: $2"

echo "Todos os parâmetros: $*"

echo "Quantos parâmetros: $#"

echo "Saída do último comando: $?"

echo "PID: $$"

echo $0
