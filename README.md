# `kshowpic`

This plasmoid displays a picture when expanded.
This is useful when you want to have a quick reference for something that you could open with a mouse click or a global keyboard shortcut.

## Installation

```sh
kpackagetool5 -i .
```

## Development

```sh
# Use this to reinstall the plasmoid and run it in a window
kpackagetool5 -r . && kpackagetool5 -i . && plasmawindowed me.ftvkyo.kshowpic

# Note: plasmoidviewer does not let right-click to open settings.
# Note: `kpackagetool5 -u .` may override local files.
```

## Usage

1. Add the plasmoid to your panel.
2. Configure the plasmoid.
3. Click on it, or use a keyboard shortcut configured to open and close it.

## Configuration

- Path to the picture to display.
- Width and height of the window (with respect to DPI).
- Keyboard shortcut to open and close the plasmoid (built-in).
