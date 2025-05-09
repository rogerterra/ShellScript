#!/usr/bin/env bash

# listaUsuarios.sh - Extrai usuários do /etc/passwd

# Nome projeto: listaUsuarios.sh
# Autor: Rog
# Manutenção: Rog

# -------------------------------------------------------------#

# Irá extrair usuários do /etc/passwd, havendo a possibilidade de
# colocar em maiúsculo e em ordem alfabética

# Exemplos:
#       $ ./listaUsuarios.sh -s -m
#       Neste exemplo ficará em maiúsculo e em ordem alfabética

# -------------------------------------------------------------#

# Testado em:
#  bash 5.2.21

# -------------------------------------------------------------#

# VARIÁVEIS

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"

MENSAGEM_USO="
  $0 - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordernar a saída
"
VERSAO="v1.0"

# -------------------------------------------------------------#
# EXECUÇÃO

if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi

if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi

if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"

# -------------------------------------------------------------#
