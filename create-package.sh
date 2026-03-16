#!/bin/bash

# Script de création du package ZIP pour WordPress.org
# AdWPTracker v3.6.0

echo "🚀 Création du package AdWPTracker pour WordPress.org..."
echo ""

# Couleurs pour le terminal
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Variables
PLUGIN_SLUG="adwptracker"
PLUGIN_DIR="/Users/kameltalbi/Desktop/Wpadtracker"
OUTPUT_DIR="/Users/kameltalbi/Desktop"
TEMP_DIR="${OUTPUT_DIR}/${PLUGIN_SLUG}"
ZIP_FILE="${OUTPUT_DIR}/${PLUGIN_SLUG}.zip"

# Étape 1: Nettoyer les anciens fichiers
echo -e "${BLUE}📁 Nettoyage des anciens packages...${NC}"
if [ -f "$ZIP_FILE" ]; then
    rm "$ZIP_FILE"
    echo "   ✓ Ancien ZIP supprimé"
fi

if [ -d "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
    echo "   ✓ Ancien dossier temporaire supprimé"
fi

# Étape 2: Créer le dossier temporaire
echo -e "${BLUE}📦 Création du dossier temporaire...${NC}"
mkdir -p "$TEMP_DIR"
echo "   ✓ Dossier créé: $TEMP_DIR"

# Étape 3: Copier les fichiers du plugin
echo -e "${BLUE}📋 Copie des fichiers du plugin...${NC}"
cp -r "$PLUGIN_DIR"/* "$TEMP_DIR/"
echo "   ✓ Fichiers copiés"

# Étape 4: Supprimer les fichiers non nécessaires
echo -e "${BLUE}🗑️  Suppression des fichiers non nécessaires...${NC}"

cd "$TEMP_DIR"

# Supprimer Git
rm -rf .git .gitignore .gitattributes
echo "   ✓ Fichiers Git supprimés"

# Supprimer fichiers de développement
rm -rf node_modules package.json package-lock.json
echo "   ✓ Fichiers Node.js supprimés"

# Supprimer fichiers macOS
find . -name ".DS_Store" -delete
echo "   ✓ Fichiers .DS_Store supprimés"

# Supprimer fichiers de documentation interne
rm -f SECURITY-AUDIT.md SUBMISSION-GUIDE.md create-package.sh
echo "   ✓ Fichiers de documentation interne supprimés"

# Supprimer dossier .wordpress-org (guide assets)
rm -rf .wordpress-org
echo "   ✓ Dossier .wordpress-org supprimé"

# Supprimer fichiers de log
find . -name "*.log" -delete
echo "   ✓ Fichiers .log supprimés"

# Supprimer fichiers temporaires
find . -name "*~" -delete
find . -name "*.swp" -delete
echo "   ✓ Fichiers temporaires supprimés"

# Étape 5: Vérifier les fichiers essentiels
echo -e "${BLUE}✅ Vérification des fichiers essentiels...${NC}"

REQUIRED_FILES=(
    "adwptracker.php"
    "readme.txt"
    "README.md"
    "uninstall.php"
    "includes/class-adwpt-activator.php"
    "includes/class-adwpt-admin.php"
    "includes/class-adwpt-frontend.php"
    "assets/css/frontend.css"
    "assets/js/tracker.js"
    "languages/adwptracker.pot"
)

MISSING_FILES=0
for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "$file" ]; then
        echo -e "   ${RED}✗ Fichier manquant: $file${NC}"
        MISSING_FILES=$((MISSING_FILES + 1))
    fi
done

if [ $MISSING_FILES -eq 0 ]; then
    echo -e "   ${GREEN}✓ Tous les fichiers essentiels sont présents${NC}"
else
    echo -e "   ${RED}✗ $MISSING_FILES fichier(s) manquant(s)${NC}"
    echo -e "   ${RED}Abandon de la création du package${NC}"
    exit 1
fi

# Étape 6: Créer le ZIP
echo -e "${BLUE}📦 Création du fichier ZIP...${NC}"
cd "$OUTPUT_DIR"
zip -r "$ZIP_FILE" "$PLUGIN_SLUG" -q

if [ $? -eq 0 ]; then
    echo -e "   ${GREEN}✓ ZIP créé avec succès${NC}"
else
    echo -e "   ${RED}✗ Erreur lors de la création du ZIP${NC}"
    exit 1
fi

# Étape 7: Nettoyer le dossier temporaire
echo -e "${BLUE}🧹 Nettoyage...${NC}"
rm -rf "$TEMP_DIR"
echo "   ✓ Dossier temporaire supprimé"

# Étape 8: Afficher les informations
echo ""
echo -e "${GREEN}✅ Package créé avec succès !${NC}"
echo ""
echo "📦 Informations du package:"
echo "   Nom: ${PLUGIN_SLUG}.zip"
echo "   Emplacement: $ZIP_FILE"
echo "   Taille: $(du -h "$ZIP_FILE" | cut -f1)"
echo ""
echo "📋 Prochaines étapes:"
echo "   1. Vérifier le contenu du ZIP"
echo "   2. Tester l'installation sur un WordPress local"
echo "   3. Soumettre sur https://wordpress.org/plugins/developers/add/"
echo ""
echo -e "${BLUE}📖 Lire SUBMISSION-GUIDE.md pour les instructions détaillées${NC}"
echo ""
