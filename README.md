# Sofiui

[![Pub Version](https://img.shields.io/pub/v/softui)](https://pub.dev/packages/softui)

Sofiui is a modern and customizable Flutter package designed for creating Sofiui UI components such as containers, buttons, grids, and lists with ease. 

## Features

- Sofiui **containers** with shadow effects.
- Sofiui **buttons** and **icon buttons**.
- Support for **grid views** and **list views** with Sofiui styling.
- Highly customizable components for diverse design requirements.


| <img src="https://github.com/sumitgit2/softui/blob/main/img/Screenshot_1737050250.png" width="200px"> | <img src="https://github.com/sumitgit2/softui/blob/main/img/Screenshot_1737050253.png" width="200px"> |<img src="https://github.com/sumitgit2/softui/blob/main/img/Screenshot_1737050257.png" width="200px"> | <img src="https://github.com/sumitgit2/softui/blob/main/img/Screenshot_1737050263.png" width="200px"> | <img src="https://github.com/sumitgit2/softui/blob/main/img/Screenshot_1737050266.png" width="200px"> |<img src="https://github.com/sumitgit2/softui/blob/main/img/WhatsApp Image 2025-01-16 at 23.42.58.jpeg" width="200px"> |


## Installation

Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  softui: ^1.0.0
```

### Then, run:
```
flutter pub get
```

## Usage
- Import the package

```dart
import 'package:softui/soft_ui.dart';
```

## Examples

### NeuContainer
```dart
NeuContainer(
  height: 100,
  width: 100,
  child: Center(
    child: Text("Hello"),
  ),
);
```

### NeuButton
```dart
NeuButton(
  onPressed: () => print("Button Pressed"),
  child: Text("Click Me"),
);
```

### NeuIconButton
```dart
NeuIconButton(
  icon: Icons.favorite,
  onPressed: () => print("Icon Button Pressed"),
);
```

### NeuGridView
```dart
NeuGridView(
  crossAxisCount: 2,
  itemCount: 4,
  itemBuilder: (context, index) {
    return NeuContainer(
      child: Center(
        child: Text("Item $index"),
      ),
    );
  },
);
```

### NeuListView
```dart
NeuListView(
  itemCount: 10,
  itemBuilder: (context, index) {
    return NeuContainer(
      child: ListTile(
        title: Text("List Item $index"),
      ),
    );
  },
);
```

## Customization
- All components are highly customizable with parameters for color, shadows, border radius, padding, and margins.

## License
- This package is licensed under the MIT License.

## Example
See the complete example in the example directory for a full implementation.


# Contributing
Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes.

# GitHub
For more details, [visit the GitHub repository](https://github.com/sumitgit2/softui)

Copyright (c) 2024 [Developer Sumit](https://sumitdev83.netlify.app/)