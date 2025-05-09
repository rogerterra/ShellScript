#!/usr/bin/env bash

#Forma 1 de utilizar for
echo "==== For 1"
for (( i = 0; i < 10; i++ )); do
  echo $i
done

#Forma 2 de utilizar for com seq:
echo "==== For 2 (seq)"
for i in $(seq 10); do
  echo $i
done

#Forma 3 de utilizar for com array:
echo "==== For 3 (array)"
Frutas=(
'Laranja'
'Ameixa'
'Abacaxi'
)
for i in "${Frutas[@]}"; do
  echo $i
done

#Forma 4 com while
echo "==== While"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
  echo $contador
  contador=$(($contador+1))
done

#Tarefa
echo "==== Tarefa 2"
for i in $(seq 0 10); do
  [ $(($i%2)) -eq 0 ] && echo "Número $i é divísivel por 2"
done
