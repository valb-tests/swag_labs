# SauceDemo - Tests automatisés

Ce projet contient une suite de tests automatisés développés avec Robot Framework pour tester l’application web SauceDemo.

## 💻 Application testée
https://www.saucedemo.com/

## 🌐 Environnement technique

- **Framework de tests automatisés** : Robot Framework
- **Automatisation navigateur** : Playwright (via Browser Library)
- **Gestion et reporting des tests** : Jira & Xray
- **CI/CD** : GitHub Actions
- **Publication rapports** : GitHub Pages

## 🎯 Objectifs du projet

- Automatiser les scénarios :
  - Login et logout utilisateur
  - Gestion du panier
  - Validation de commande

- Intégrer les résultats des tests dans :
  - Xray
  - Github pages

## 📊 Résultats des tests
- [Résumé des tests](https://valb-tests.github.io/swag_labs/report.html)  
- [Logs détaillés](https://valb-tests.github.io/swag_labs/log.html)

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
