#!/bin/bash
declare -A repos;

repos[campechanos]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'

repo=~/ref_repo;
mkdir "$repo";
cd  "$repo";
git clone "${repos[campechanos]}";

declare -a dir;
dir=$(find "$repo" -type f -name "*.out");
echo "${dir[@]}";


