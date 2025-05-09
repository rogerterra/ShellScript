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
#  bash 5.2.21S

# -------------------------------------------------------------#

# VARIÁVEIS

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"

MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordernar a saída
"
VERSAO="v1.1"

# -------------------------------------------------------------#
# EXECUÇÃO

case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0    ;;
  -v) echo "$VERSAO" && exit 0          ;;
  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo "$USUARIOS"                  ;;
esac

# -------------------------------------------------------------#
