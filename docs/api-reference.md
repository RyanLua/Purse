Purse unlocks APIs for the CoreGui backpack which were previously locked to other CoreGui scripts. To access the APIs, just require Purse like any other [module script]:

``` lua title="Toggle Inventory Example" linenums="1"
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Purse = require(ReplicatedStorage.Purse)

Purse.OpenClose() -- Toggle the inventory
```

  [module script]: https://create.roblox.com/docs/reference/engine/classes/ModuleScript

## Methods

### OpenClose

```
OpenClose(): ()
```

Toggles the inventory open/closed state. If the inventory is currently open, it will close it. If closed, it will open it.

## Properties

### IsHotbarVisible

```
IsHotbarVisible: boolean
```

### IsOpen

```
IsOpen: boolean
```

### ModuleName

```
ModuleName: string
```

Returns "Backpack".

### KeepVRTopbarOpen

```
KeepVRTopbarOpen: boolean
```

Returns `true`.

### VRIsExclusive

```
VRIsExclusive: boolean
```

Returns `true`.

### VRClosesNonExclusive

```
VRClosesNonExclusive: boolean
```

Returns `true`.

### IsInventoryEmpty

```
IsInventoryEmpty: boolean
```

Returns `true` if the inventory is empty.

## Events

### StateChanged

```
StateChanged: BindableEvent
```

### BackpackEmpty

```
BackpackEmpty: BindableEvent
```

Fires when the inventory is empty.

### BackpackItemAdded

```
BackpackItemAdded: BindableEvent
```

Fires when a item is added to the inventory.

### BackpackItemRemoved

```
BackpackItemRemoved: BindableEvent
```

Fires when a item is removed from the inventory.

  [BindableEvent]: https://create.roblox.com/docs/reference/engine/classes/BindableEvent
  [boolean]: https://create.roblox.com/docs/luau/booleans
  [string]: https://create.roblox.com/docs/luau/strings
