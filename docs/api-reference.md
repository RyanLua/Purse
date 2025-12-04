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

``` lua
OpenClose(): ()
```

Toggles whether or not the inventory is visible.

### IsInventoryEmpty

``` lua
IsInventoryEmpty(): boolean
```

Returns true if the inventory is empty.

## Properties

### IsHotbarVisible

``` lua
IsHotbarVisible: boolean
```

Determines whether or not the hotbar is visible.

### IsOpen

``` lua
IsOpen: boolean
```

Returns true if the inventory is open.

### ModuleName

``` lua
ModuleName: "Backpack"
```

### KeepVRTopbarOpen

``` lua
KeepVRTopbarOpen: true
```


### VRIsExclusive

``` lua
VRIsExclusive: true
```

### VRClosesNonExclusive

``` lua
VRClosesNonExclusive: true
```

## Events

### StateChanged

``` lua
StateChanged(isNowOpen: boolean): BindableEvent
```

Fires after the inventory is opened or closed.

### BackpackEmpty

``` lua
BackpackEmpty(): BindableEvent
```

Fires when the backpack becomes empty.

### BackpackItemAdded

``` lua
BackpackItemAdded(): BindableEvent
```

Fires when an item is added to the backpack.

### BackpackItemRemoved

``` lua
BackpackItemRemoved(): BindableEvent
```

Fires when an item is removed from the backpack.

  [BindableEvent]: https://create.roblox.com/docs/reference/engine/classes/BindableEvent
  [boolean]: https://create.roblox.com/docs/luau/booleans
  [string]: https://create.roblox.com/docs/luau/strings