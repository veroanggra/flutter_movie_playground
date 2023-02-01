# flutter_movie_playground

## Overview
* This project use flutter sdk version 1.22.4
* Delete the `pubspec.lock` from each module than do `Pub Get` on `pubspec.yaml` (`core`, `shared`, `dependencies`) and `root project`
* When you found some of your target uri model on `core` module not generated as well `*.g.dart` go to `core` module with `cd` and run `flutter packages pub run build_runner build --delete-conflicting-outputs`
* This project use Movie API [this](https://www.themoviedb.org/) Add your `API_KEY` into ***api_constant.dart*** file


## Modularization Structure 

    # Root Project
    .
    |
    ├── lib                        # Name of module (default from Flutter).
    │   ├── app_launcher           # Main Application.
    │   └── ui                     # Activity/View layer.
    |
    └── base                       # Name of directory.
        ├── core                   # Name of module.
        │   ├── bloc               # Business logic component.
        │   ├── di                 # Dependency injection.
        │   ├── local              # Local data handlers.
        │   ├── network            # Remote data handlers.
        │   └── repository         # Repository data handlers.
        |
        ├── dependencies           # Name of module (Handle dependency version updates).
        |
        └── shared                 # Name of module.
            ├── common             # Common shared.
            └── widget             # Custom widget which can be used repeatedly.

