# Lab 02: UI Fundamentals and Layout

**CSS3344 Mobile Application Development**
**Student:** Ngu Ming Henn · **Student ID:** BCS24020001

A Flutter student profile app, built on the Lab 01 project, that demonstrates layout decomposition, adaptive portrait/landscape layouts, and Material vs. Cupertino pickers.

## Lab Objectives Covered

| Exercise | What was implemented |
|----------|----------------------|
| **2.1 Deconstructing a Section Widget** | The UI is split into reusable widgets: `StudentDetailsSection`, `TitleSection` (data passed in through constructor parameters, with `Expanded` for flex layout), and `ImageSection`. |
| **2.2 Orientation & Adaptive Layouts** | `OrientationBuilder` switches between a vertical `ListView` in portrait and a side-by-side `Row` of two `Expanded` panels in landscape, avoiding overflow errors. |
| **2.2 Pickers: Material vs. Cupertino** | Material Date Picker, Cupertino Date Picker (modal sheet), Material `DropdownButton`, and Cupertino Wheel Picker (modal sheet). The selected date and role are stored in a `StatefulWidget` and updated with `setState`. |

## Widget Tree

```
StudentInfoApp (MaterialApp)
└── StudentProfileScreen (StatefulWidget)
    └── Scaffold
        ├── AppBar
        └── OrientationBuilder
            ├── Portrait → ListView
            │   ├── StudentDetailsSection
            │   ├── Location Details card → TitleSection
            │   ├── ImageSection
            │   └── Interactive Pickers card
            └── Landscape → Row
                ├── Expanded → SingleChildScrollView → StudentDetailsSection
                └── Expanded → ListView
                    ├── Location Details card → TitleSection
                    ├── ImageSection
                    └── Interactive Pickers card
```

## Project Structure

```
lib/main.dart            ← all app code
assets/image/myself.jpg  ← profile photo
assets/image/kudasan.jpg ← location photo (Kundasang, Sabah)
test/widget_test.dart    ← widget test checking every section renders
```

## How to Run

```bash
flutter pub get
flutter run
```

Run the tests:

```bash
flutter test
```

Tested with Flutter 3.47.7 on an Android emulator (Pixel 7).

## References

1. https://docs.flutter.dev/ui/layout
2. https://docs.flutter.dev/ui/widgets
