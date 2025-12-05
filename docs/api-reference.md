Purse unlocks APIs for the CoreGui backpack which were previously locked to other CoreGui scripts. To access the APIs, just require Purse like any other [module script].

  [module script]: https://create.roblox.com/docs/reference/engine/classes/ModuleScript

## Methods

The following code sample, placed within a child `LocalScript` of a `GuiButton`, uses [`OpenClose()`](#openclose) to toggle the inventory on the button's `Activated` event.

``` lua title="Inventory Toggle Button" linenums="1"
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Purse = require(ReplicatedStorage.Purse)

local button = script.Parent

local function onButtonActivated()
	Purse.OpenClose() -- Toggle the inventory
end

button.Activated:Connect(onButtonActivated)
```

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

The following code sample, placed within a child `LocalScript` of `StarterPlayerScripts`, uses [`StateChanged`](#statechanged) to detect when the inventory is toggled and prints its state to output.

``` lua title="Detect Inventory State" linenums="1"
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Purse = require(ReplicatedStorage.Purse)

Purse.StateChanged.Event:Connect(function(isNowOpen)
	if isNowOpen then
		print("Inventory opened")
	else
		print("Inventory closed")
	end
end)
```

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
