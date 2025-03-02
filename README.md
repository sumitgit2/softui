# Sofiui_dev

[![Pub Version](https://img.shields.io/pub/v/softui_dev)](https://pub.dev/packages/softui_dev)

Sofiui_dev is a modern and customizable Flutter package designed for creating Sofiui_dev UI components such as containers, buttons, grids, and lists with ease. 

## Features

- Sofiui_dev **containers** with shadow effects.
- Sofiui_dev **buttons** and **icon buttons**.
- Support for **grid views** and **list views** with Sofiui_dev styling.
- Highly customizable components for diverse design requirements .


| <img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/Screenshot_1737050250.png" width="200px"> | <img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/Screenshot_1737050253.png" width="200px"> |<img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/Screenshot_1737050257.png" width="200px"> | <img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/Screenshot_1737050263.png" width="200px"> | <img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/Screenshot_1737050266.png" width="200px"> |<img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/WhatsApp Image 2025-01-16 at 23.42.58.jpeg  |<img src="https://raw.githubusercontent.com/sumitgit2/softui/main/img/softui_icon_name_button_widget.jpg" width="200px"> |


## Installation

Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  softui_dev: ^1.0.0
```

### Then, run:
```
flutter pub get
```

## Usage
- Import the package

```dart
import 'package:softui_dev/soft_ui.dart';
```

## Examples

### SoftuiContainer
```dart
SoftuiContainer(
  height: 100,
  width: 100,
  child: Center(
    child: Text("Hello"),
  ),
);
```

### SoftuiButton
```dart
SoftuiButton(
  onPressed: () => print("Button Pressed"),
  child: Text("Click Me"),
);
```

### SoftuiIconButton
```dart
SoftuiIconButton(
  icon: Icons.favorite,
  onPressed: () => print("Icon Button Pressed"),
);
```

### SoftuiGridView
```dart
SoftuiGridView(
  crossAxisCount: 2,
  itemCount: 4,
  itemBuilder: (context, index) {
    return SoftuiContainer(
      child: Center(
        child: Text("Item $index"),
      ),
    );
  },
);
```

### SoftuiListView
```dart
SoftuiListView(
  itemCount: 10,
  itemBuilder: (context, index) {
    return SoftuiContainer(
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