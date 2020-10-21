#!/bin/bash

cd /

echo "Voici les fichiers du disque au dessus de 50 Mo: "
echo " "

sudo find . -type f -exec du --exclude=*proc/*/* -a -b {} + | tail -n +2 | awk '$1>=52428800'| awk '{print $2}'


echo " "