# FiveM Props Spawner

The FiveM Props Spawner is a resource for FiveM servers that allows server owners and developers to easily spawn props in the world of GTA V. This system is highly customizable through a configuration file, enabling the placement of props at various locations throughout the game world.

## Features

- Easy-to-use configuration file for placing props at predetermined coordinates.
- Supports an unlimited number of prop placements across the map.
- Allows for specific prop orientation with heading values.
- Includes options to freeze props in place to prevent interactions.

## Configuration

The `Config.lua` file allows you to define the properties and their locations. Here is the structure you can modify:

```lua
Config = {}
Config.Props = {
    {
        name = 'prop_jukebox_02v',
        coords = { x = 100.0, y = 200.0, z = 300.0, h = 0.0 }
    },
    {
        name = 'prop_jukebox_02v',
        coords = { x = 150.0, y = 250.0, z = 350.0, h = 90.0 }
    },
    -- Add more prop configurations here
}
```

## Installation
Copy the fivem-propspawner folder into your FiveM server's resources directory.
Add start fivem-propspawner to your server config (server.cfg).
Adjust the Config.lua to add or modify prop entries.
