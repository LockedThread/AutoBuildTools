#!/bin/bash
versions=('1.8' '1.8.3' '1.8.7' '1.8.8' '1.9' '1.9.2' '1.9.4' '1.10' '1.11' '1.12' '1.12.1' '1.12.2' '1.13' '1.13.1' '1.13.2')
for version in "${versions[@]}"
do 
    echo $version
    mkdir $version
    cp ./BuildTools.jar ./$version/BuildTools.jar
    cd $version
    java -jar BuildTools.jar --rev $version
    cd ..
done