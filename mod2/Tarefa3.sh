#!/usr/bin/env bash

# Nome projeto: tarefa3.sh
# Autor: Rog
# Manutenção: Rog

# -------------------------------------------------------------#

# Objetivo para realização da Tarefa 3 do curso Shell Script.
# Testado em: bash 5.2.21

# -------------------------------------------------------------#
# VARIÁVEIS

comeco=0 #Número inicial
ate=100 #Vai até?

# -------------------------------------------------------------#
# TESTES

#Começo maior que o fim? Inválido.
[$comeco -ge $ate && exit 1

# -------------------------------------------------------------#
# EXECUÇÃO

for i in $(seq $comeco $ate) # Repete 100 vezes
do
  for j in $(seq $i $ate) # Repete de N vezes atè 100 vezes
  do
    printf"*"
  done
    print"\n" #Quebra linha
  done

# -------------------------------------------------------------#
