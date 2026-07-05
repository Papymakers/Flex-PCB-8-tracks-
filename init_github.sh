#!/bin/bash
# Script d'initialisation du dépôt GitHub
# Org : Papymakers / Repo : flex-pcb-8-tracks-254
# Exécuter depuis le dossier racine du projet

set -e

REPO_NAME="flex-pcb-8-tracks-254"
ORG="Papymakers"

echo "=== Initialisation du dépôt $ORG/$REPO_NAME ==="

git init
git add .
git commit -m "Initial commit — nappe FLEX-PCB 8 pistes 2.54mm (71.1x22.9mm, simple face)"

gh repo create "$ORG/$REPO_NAME" \
  --public \
  --description "Flexible board-to-board interconnect (8 tracks, 2.54mm, single-sided, 71.1x22.9mm) for TE 487925-1 ZIF connector" \
  --homepage "https://papymakers.com"

git remote add origin "git@github.com:$ORG/$REPO_NAME.git"
git branch -M main
git push -u origin main

echo "=== Dépôt disponible : https://github.com/$ORG/$REPO_NAME ==="
