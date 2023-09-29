#!/bin/bash

# Chemin vers le fichier csv

csv_file=/users/rouaz/document/Shell_Userlist.csv

# Lecture du fichier

while IFS=, read -r id full_name passwd status
do
        username=$(echo "$full_name" | tr ' ' '_')
        sudo useradd "$username"
        if [ "$status" = "admin" ]; then
                usermode -aG sudo "$username"
        fi
done < "$csv_file"
