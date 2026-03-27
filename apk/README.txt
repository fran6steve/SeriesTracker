# SeriesTracker

Application Android développée en Kotlin permettant de consulter les séries TV populaires à partir d’une API publique.

---

## Objectif

Le projet **SeriesTracker** vise à mettre en œuvre les bonnes pratiques du développement Android moderne, notamment :

* L’architecture **MVVM (Model-View-ViewModel)**
* La gestion des appels réseau avec **Retrofit**
* L’injection de dépendances avec **Dagger-Hilt**
* La création d’interfaces déclaratives avec **Jetpack Compose**

L’application permet d’afficher une liste de séries populaires avec leurs informations principales.

---

## Fonctionnalités

* Affichage d’une liste de séries TV populaires
* Chargement des images à distance
* Gestion des états de l’interface :

  * Chargement
  * Succès
  * Erreur avec possibilité de réessayer
* Mise à jour des données depuis une API distante

---

## Technologies utilisées

* Kotlin
* Jetpack Compose
* Retrofit
* Gson
* Dagger-Hilt
* ViewModel
* StateFlow
* Coil

---

## API utilisée

Les données sont récupérées depuis l’API publique suivante :

https://www.episodate.com/api/most-popular

---

## Architecture

Le projet suit une architecture **MVVM**, structurée de la manière suivante :

* **Model** : objets de données (DTO) et modèles métier
* **View** : composants UI développés avec Jetpack Compose
* **ViewModel** : gestion de l’état et de la logique applicative
* **Repository** : couche d’accès aux données et gestion des erreurs

---

## Installation

### Utilisation via APK

1. Accéder au dossier `/apk` à la racine du projet
2. Installer le fichier APK sur un appareil Android
3. Lancer l’application

### Utilisation via Android Studio

1. Cloner le dépôt :

```bash id="clone12345"
git clone <url-du-repo>
```

2. Ouvrir le projet avec Android Studio

3. Exécuter l’application sur un émulateur ou un appareil physique

---

## Structure du projet

```id="struct12345"
SeriesTracker/
│── apk/                # APK debug
│── app/
│   ├── data/           # API, DTO, repository
│   ├── domain/         # Modèles métier
│   ├── ui/             # Composants UI (Compose)
│   └── viewmodel/      # ViewModels
```

---

## État du projet

* Application fonctionnelle
* Respect de l’architecture MVVM
* Injection de dépendances avec Hilt
* Gestion des états de l’interface

---

## Auteur

SIEGNI Francis.
