Purse's source code is located in [`src/init.luau`](https://github.com/ryanlua/purse/blob/main/src/init.luau) where you can make modifications to the backpack's functionality and appearance.

For example, you can make the slot's equip color red by changing the `SLOT_EQUIP_COLOR` to the below:

```lua
local SLOT_EQUIP_COLOR = Color3.new(233 / 255, 90 / 255, 90 / 255)
```

![Screenshot of the hotbar with a slot equipped with a red selection outline](assets/red-slot-equip-color.png)
