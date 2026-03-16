# WordPress.org Assets Guide

Ce dossier contient les assets visuels pour la page WordPress.org du plugin.

## 📋 Images Requises

### Bannières (Headers)
- **banner-1544x500.png** - Bannière principale (haute résolution)
- **banner-772x250.png** - Bannière mobile (basse résolution)

### Icônes
- **icon-256x256.png** - Icône haute résolution
- **icon-128x128.png** - Icône basse résolution

### Screenshots (Optionnel mais recommandé)
- **screenshot-1.png** - Dashboard avec statistiques
- **screenshot-2.png** - Interface de gestion des annonces
- **screenshot-3.png** - Configuration des zones
- **screenshot-4.png** - Mobile sticky footer en action
- **screenshot-5.png** - Page des statistiques détaillées
- **screenshot-6.png** - Intégration shortcode
- **screenshot-7.png** - Panneau des paramètres

## 🎨 Recommandations de Design

### Couleurs du Plugin
- **Primaire**: #0066FF (Bleu)
- **Secondaire**: #00D924 (Vert)
- **Accent**: #667eea (Violet)
- **Fond**: #1f2937 (Gris foncé)

### Style
- Moderne et professionnel
- Utiliser des gradients
- Icônes claires et lisibles
- Texte en anglais pour l'audience internationale

### Bannière - Éléments à Inclure
1. **Logo/Icône** du plugin
2. **Nom**: "AdWPTracker"
3. **Slogan**: "Advanced Ad Manager with Mobile Sticky Footer"
4. **Visuel**: Mockup d'un dashboard ou d'une interface mobile
5. **Badges**: "Real-time Stats", "4 Ad Types", "Mobile First"

### Icône - Recommandations
- Symbole représentant la publicité (📊, 📈, 💰)
- Fond avec gradient
- Bordure arrondie
- Contraste élevé pour la visibilité

## 🛠️ Outils Recommandés

### Pour Créer les Images
- **Canva** (gratuit) - https://canva.com
- **Figma** (gratuit) - https://figma.com
- **Photoshop** (payant)
- **GIMP** (gratuit) - https://gimp.org

### Templates Canva
1. Chercher "WordPress Plugin Banner"
2. Dimensions personnalisées: 1544x500
3. Utiliser les couleurs du plugin
4. Exporter en PNG haute qualité

## 📤 Upload sur WordPress.org

Une fois le plugin approuvé sur WordPress.org, vous devrez:

1. Utiliser **SVN** pour uploader les assets
2. Structure du dossier SVN:
```
/assets/
  banner-1544x500.png
  banner-772x250.png
  icon-256x256.png
  icon-128x128.png
  screenshot-1.png
  screenshot-2.png
  ...
```

3. Commande SVN:
```bash
svn checkout https://plugins.svn.wordpress.org/adwptracker
cd adwptracker/assets
# Copier vos images ici
svn add *.png
svn commit -m "Add plugin assets"
```

## ✅ Checklist

- [ ] Créer banner-1544x500.png
- [ ] Créer banner-772x250.png
- [ ] Créer icon-256x256.png
- [ ] Créer icon-128x128.png
- [ ] Prendre 7 screenshots du plugin
- [ ] Optimiser toutes les images (compression)
- [ ] Vérifier que les images sont claires et professionnelles

## 💡 Conseils

- Les bannières sont la **première impression** de votre plugin
- Investissez du temps pour un design professionnel
- Testez sur différents écrans (desktop, mobile)
- Regardez les bannières des plugins populaires pour inspiration
- Utilisez des mockups de devices pour les screenshots

## 📚 Exemples de Plugins Bien Designés

- Yoast SEO
- WooCommerce
- Elementor
- Contact Form 7
- Wordfence Security

Étudiez leurs pages WordPress.org pour inspiration !
