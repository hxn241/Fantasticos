#!/bin/bash
declare -A repos;

repos[campechanos]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
fantasticos=~/fantasticos
repo=~/ref_repo;
mkdir "$repo";
cd  "$repo";
git clone "${repos[campechanos]}";

cd  ~/ref_repo/campechano/
mkdir ~/diff/

a=$(diff 001.out ~/fantasticos/001.OUT)
if [ -z "$a" ]; then
	echo "Ejercicio 001 es igual"
else	
	echo "Ejercicio 001 no es igual"
	echo "diferencias: \n $a \n 001 No es IGUAL" >> ~/diff/diferencias.txt
fi
a=$(diff 002.out ~/fantasticos/002.OUT)
if [ -z "$a" ]; then
	echo "ejercicio 002 es igual"
else
	echo "ejercicio 002 no es igual"
	echo "diferencias: \n $a \n 002 No es IGUAL" >> ~/diff/diferencias.txt
fi
a=$(diff 003.out ~/fantasticos/003.OUT)
if [ -z "$a" ]; then
	echo "Ejercicio 003 es igual"
else 
	echo "Ejercicio 003 no es igual"
	echo "diferencias:\n $a \n 003 No es IGUAL" >> ~/diff/diferencias.txt
fi
a=$(diff 004.out ~/fantasticos/004.OUT)
if [ -z "$a" ]; then
	echo "Ejercicio 004 es igual"
else
	echo "Ejercicio 004 No es igual"
	echo "diferencias: \n $a \n 004 No es IGUAL" >> ~/diff/diferencias.txt
fi
a=$(diff 005.out ~/fantasticos/005.OUT)
if [ -z "$a" ]; then
	echo "Ejercicio 005 es igual"
else
	echo "Ejercicio 005 no es igual"
	echo " diferencias:\n $a \n 005 No es IGUAL" >> ~/diff/diferencias.txt
fi
a=$(diff 006.out ~/fantasticos/006.OUT)
if [ -z "$a" ]; then
	echo "Ejercicio 006 es igual"
else
	echo "ejercicio 006 no es igual"
	echo " diferencias: \n $a \n 006 No es IGUAL" >> ~/diff/diferencias.txt
fi

echo \n \n 

cat ~/diff/diferencias.txt

