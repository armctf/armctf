#!/bin/bash


###
read -p "vm name: " curl
read -p "vm link: " curli
read -p "sha256: " func
read -p "creator: " creator
read -p "link: " creatorl
###
echo "---" > "$curl.md"
echo "curls:" >> "$curl.md"
echo "  $curl:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "functions:" >> "$curl.md"
echo "  $curl:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "wals:" >> "$curl.md"
echo "  $curl:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "---" >> "$curl.md"
###
echo "$curl:" >> curls.yml
echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"$curli\"><img src=\"assets/nc.png\"></a>" >> curls.yml
###
echo "$curl:" >> functions.yml
echo "  label: $func" >> functions.yml
###
echo "$curl:" >> wals.yml
echo "  label: <a target=\"_blank\" href=\"$creatorl\">$creator</a>" >> wals.yml
###
echo "$curl: \"https://vvmlist.github.io/#%22$curl%22\"" >> links.yml
####
#####
######