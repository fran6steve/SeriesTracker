# SeriesTracker-Android

Application Android en **Jetpack Compose** qui consomme l'API publique **EpisoDate** pour afficher les séries TV populaires.

## Fonctionnalités

- récupération des séries populaires via Retrofit
- architecture **MVVM**
- gestion d'état avec **ViewModel + StateFlow**
- injection de dépendances avec **Dagger-Hilt**
- chargement d'images avec **Coil**
- écran de chargement, écran d'erreur avec bouton **Réessayer**, et liste des résultats

## Structure du projet

```text
app/src/main/java/com/seriestracker/
├── data/
│   ├── api/
│   ├── model/
│   └── repository/
├── di/
├── ui/
│   ├── components/
│   ├── screens/
│   ├── theme/
│   └── viewmodel/
├── MainActivity.kt
└── SeriesTrackerApp.kt
```

## Pré-requis

- Android Studio récent
- SDK Android 34
- JDK 17
- connexion internet

## Lancement dans Android Studio

1. Décompresse le projet.
2. Ouvre **Android Studio**.
3. Choisis **Open** puis sélectionne le dossier `SeriesTracker-Android`.
4. Laisse Gradle synchroniser les dépendances.
5. Lance un émulateur Android ou branche un téléphone en mode développeur.
6. Clique sur **Run**.

## Générer l'APK debug

Une fois le projet ouvert et synchronisé dans Android Studio :

- menu **Build > Build Bundle(s) / APK(s) > Build APK(s)**
- ou en terminal dans le projet : `./gradlew assembleDebug`

L'APK sera généré ici :

```text
app/build/outputs/apk/debug/app-debug.apk
```

Ensuite, copie cet APK dans le dossier racine `apk/` si ton enseignant le demande.

## Endpoint utilisé

`GET https://www.episodate.com/api/most-popular?page=1`

## Remarques

- Le projet respecte le cahier des charges : DTO + modèle métier, mapping `toDomain()`, Repository, ViewModel, Hilt, Retrofit, Coil, écran Compose réactif.
- Je n'ai pas pu compiler l'APK dans cet environnement car le SDK Android/Gradle wrapper complet n'y est pas installé. Le code source est prêt à être ouvert et buildé directement dans Android Studio.
