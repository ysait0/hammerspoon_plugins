# hammerspoon_plugins

## moveWindowToSpace.lua

This plugin enables you to move active window to specific space without opening Mission Control.

The funcion `gotoSpace` of Hammerspoon API changes to s space by opening up the Mission Control and it is not good.

This plugin avoid the problem with using system keyboard shorcut `Move left a space` and `Move right a space`.

You need to check system hotkey and set them in the middle of the code.

### Usage

By default, you can move activate window to target space with `cmd + {target space number}`.

ex) `cmd + 2`

Active window and you will move to space 2 (desktop 2) without opening Mission Control.
