Purse unlocks APIs for the CoreGui backpack which were previously locked to other CoreGui scripts. To access the APIs, just require Purse like any other [module script].

``` lua title="LocalScript - Inventory Toggle Button" linenums="1"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Purse = require(ReplicatedStorage.Purse)

local button = script.Parent

local function onButtonActivated()
	Purse.OpenClose() -- Toggle the inventory
end

button.Activated:Connect(onButtonActivated)
```

  [module script]: https://create.roblox.com/docs/reference/engine/classes/ModuleScript

## Methods

### OpenClose

```
OpenClose(): ()
```

Toggles whether or not the inventory is visible.

### IsInventoryEmpty

```
IsInventoryEmpty(): boolean
```

Returns true if the inventory is empty.

## Properties

### IsHotbarVisible

```
IsHotbarVisible: boolean
```

Determines whether or not the hotbar is visible.

### IsOpen

```
IsOpen: boolean
```

Returns true if the inventory is open.

### ModuleName

```
ModuleName: string
```

Returns "Backpack".

### KeepVRTopbarOpen

```
KeepVRTopbarOpen: boolean
```

Returns true.

### VRIsExclusive

```
VRIsExclusive: boolean
```

Returns true.

### VRClosesNonExclusive

```
VRClosesNonExclusive: boolean
```

Returns true.

## Events

### StateChanged

```
StateChanged(isNowOpen: boolean): BindableEvent
```

Fires after the inventory is opened or closed.

### BackpackEmpty

```
BackpackEmpty(): BindableEvent
```

Fires when the backpack becomes empty.

### BackpackItemAdded

```
BackpackItemAdded(): BindableEvent
```

Fires when an item is added to the backpack.

### BackpackItemRemoved

```
BackpackItemRemoved(): BindableEvent
```

Fires when an item is removed from the backpack.

  [BindableEvent]: https://create.roblox.com/docs/reference/engine/classes/BindableEvent
  [boolean]: https://create.roblox.com/docs/luau/booleans
  [string]: https://create.roblox.com/docs/luau/strings