#!/bin/bash
declare -A repos;

repos[campechanos]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[equipo_confinados]=''

miruta=$(pwd)
### Falta variabilizar el valor del repositorio y poderlo pasar por parámetro!!!
repo=~/ref_repo;
mkdir "$repo";
cd  "$repo";
git clone "${repos[campechanos]}";

declare -a dir;
dir=$(find "$repo" -type f -name "*.out");
for ele in ${dir[@]}
do
 archivo="${ele: -7:7}";
 a=$(diff "$miruta/${archivo^^}" $ele | wc -c);
 
 if [[ $a -eq 0 ]];
 then
  echo "El archivo $archivo es igual\n\n";
 else
  echo "El archivo $archivo no es igual";
  echo -e "Las diferencias son:\n\n$(diff "$miruta/${archivo^^}" $ele)\n\n";
#  if [[ -d ~/diff ]];
#  then
#    echo "La carpeta ya existe";
#  else
#    mkdir '_diff';
#    diff "$miruta/${archivo^^}" $ele > "_diff/$archivo.diff"; 
#  fi 
 fi
done



