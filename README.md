# Library of Utils
Multifunctional VScript library for Left 4 Dead 2

Description of each function is contained in the source files

# Installation
Download and place **lib_utils** folder in ***Left 4 Dead 2/left4dead2/scripts/vscripts*** folder

# Including in the game
The library must be included in the root table, example:
```squirrel
IncludeScript("lib_utils/lib", getroottable());
```

# Main features
Provides 'interface' for creating Script Plugins that won't conflict with each other

Hook game events easier

Register chat/user commands

Register buttons listener

Register console variables

Useful math and vector math functions

Additional matrix classes

New methods for Vector, QAngle, Quaternion and CTerrorPlayer classes

# Add-ons that use Library of Utils
Dynamic Light: https://steamcommunity.com/sharedfiles/filedetails/?id=2261165699

Drawing System: https://steamcommunity.com/sharedfiles/filedetails/?id=2277836712

Plane Crash: https://steamcommunity.com/sharedfiles/filedetails/?id=2209844865

Laser Gun: https://steamcommunity.com/sharedfiles/filedetails/?id=2192221275

Cinematic Camera: https://steamcommunity.com/sharedfiles/filedetails/?id=2188993596
