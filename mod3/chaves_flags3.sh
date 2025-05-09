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
    -m - Coloca em maiúsculo
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAISCULO=0

# -------------------------------------------------------------#
# EXECUÇÃO

while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0                 ;;
    -v) echo "$VERSAO" && exit 0                       ;;
    -s) CHAVE_ORDENA=1                                 ;;
    -m) CHAVE_MAISCULO=1                               ;;
     *) echo "Opção inválida, avalie o -h." && exit 1  ;;
  esac
  shift
done

[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAISCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"

# -------------------------------------------------------------#
