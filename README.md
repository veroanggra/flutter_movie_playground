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


## License

```
MIT License

Copyright (c) 2021 Veronica Putri Anggraini

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
```