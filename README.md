# SauceDemo - Tests automatisés

Ce projet contient une suite de tests automatisés développés avec Robot Framework pour tester l’application web SauceDemo.

## 💻 Application testée
https://www.saucedemo.com/

## 🌐 Environnement technique

- Robot Framework
- Playwright (via Browser Library)
- Jira & Xray pour la gestion et le reporting des tests
- GitHub Actions
- GitHub Pages

## 🎯 Objectifs du projet

- Automatiser les scénarios :
  - Login et logout utilisateur
  - Ajout et suppression du panier
  - Saisie des informations clients
  - Validation de commande

- Intégrer les résultats des tests dans Xray

## ⚙️ Installation

### Cloner le projet

```bash
git clone https://github.com/valb-tests/swag_labs.git
cd swag_labs
```

### Lancer les tests
```bash
cd swag_labs
robot tests/
```
