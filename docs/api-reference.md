Purse unlocks APIs for the CoreGui backpack which were previously locked to other CoreGui scripts. To access the APIs, just require Purse like any other [module script](https://create.roblox.com/docs/reference/engine/classes/ModuleScript):

``` lua title="Toggle Inventory Example"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Purse = require(ReplicatedStorage:WaitForChild("Purse"))

Purse.OpenClose() -- Toggle the inventory
```

## Methods

### OpenClose

Toggles the backpack open/closed state. If the backpack is currently open, it will close it. If closed, it will open it.

## Properties

### IsHotbarVisible

Returns if the hotbar is currently visible to the player.

#### Returns

[boolean]

### IsOpen

Returns if the inventory is currently open to the player.

#### Returns

[boolean]

### ModuleName

Returns the module name. This will always return "Backpack".

#### Returns

[string]

### KeepVRTopbarOpen

Returns `true`.

#### Returns

[boolean]

### VRIsExclusive

Returns `true`.

#### Returns

[boolean]

### VRClosesNonExclusive

Returns `true`.

#### Returns

[boolean]

### IsInventoryEmpty

Returns if the inventory is empty.

#### Returns

[boolean]

## Events

### StateChanged

Fires when the backpack is closed or opened.

#### Returns

[BindableEvent]

### BackpackEmpty

Fires when the inventory is empty.

#### Returns

[BindableEvent]

### BackpackItemAdded

Fires when a item is added to the inventory.

#### Returns

[BindableEvent]

### BackpackItemRemoved

Fires when a item is removed from the inventory.

#### Returns

[BindableEvent]

  [BindableEvent]: https://create.roblox.com/docs/reference/engine/classes/BindableEvent
  [boolean]: https://create.roblox.com/docs/luau/booleans
  [string]: https://create.roblox.com/docs/luau/strings
