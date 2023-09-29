#!/bin/bash

# Nom d'utilisateur pour lequel vous souhaitez extraire les 
connexionsusername="eleat"

# Chemin vers le répertoire de sauvegarde
backup_dir=~/Job8/Backup.


# Obtenir le nombre de connexions pour l'utilisateur
user_logs=$(grep "$username" /var/log/auth.log)
connection_count=$(echo "$user_logs" | awk '/sshd/ && /Accepted/ {print 
$1}' | sort | uniq -c | wc -l)

# Obtenir la date au format jj-mm-aaaa-HH:MM
current_date=$(date +'%d-%m-%Y-%H-%M')

filename="number_connection-$current_date"
echo "$connection_count" > "$filename"

tar -cf "$filename.tar" "$filename"

mv "$filename.tar" "$backup_dir"

echo "le nombre de connexions de l'utilisateur $username a été enregistré 
dans $backup_dir/$filename.tar"
