Purse unlocks APIs for the CoreGui backpack which were previously locked to other CoreGui scripts. To access the APIs, just require Purse like any other [module script](https://create.roblox.com/docs/reference/engine/classes/ModuleScript):

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Purse = require(ReplicatedStorage:WaitForChild("Purse"))

BackpackScript:OpenClose() -- Toggle the inventory
```

## Methods

### OpenClose

```
BackpackScript:OpenClose() -> nil
```

Toggles the backpack open/closed state. If the backpack is currently open, it will close it. If closed, it will open it.

## Properties

### IsHotbarVisible

```
BackpackScript.IsHotbarVisible -> boolean
```

Returns if the hotbar is currently visible to the player.

### IsOpen

```
BackpackScript.IsOpen -> boolean
```

Returns if the inventory is currently open to the player.

### ModuleName

```
BackpackScript.ModuleName -> string
```

Returns the module name. This will always return "Backpack".

### KeepVRTopbarOpen

```
BackpackScript.KeepVRTopbarOpen -> boolean
```

Returns `true`.

### VRIsExclusive

```
BackpackScript.VRIsExclusive -> boolean
```

Returns `true`.

### VRClosesNonExclusive

```
BackpackScript.VRClosesNonExclusive -> boolean
```

Returns `true`.

### IsInventoryEmpty

```
BackpackScript.IsInventoryEmpty -> boolean
```

Returns if the inventory is empty.

## Events

### StateChanged

```
BackpackScript.StateChanged -> BindableEvent
```

Fires when the backpack is closed or opened.

### BackpackEmpty

```
BackpackScript.BackpackEmpty -> BindableEvent
```

Fires when the inventory is empty.

### BackpackItemAdded

```
BackpackScript.BackpackItemAdded -> BindableEvent
```

Fires when a item is added to the inventory.

### BackpackItemRemoved

```
BackpackScript.BackpackItemRemoved -> BindableEvent
```

Fires when a item is removed from the inventory.
