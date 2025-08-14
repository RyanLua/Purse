Purse is a sub project of [Satchel](https://satchel.luau.page), another backpack system designed to improve on Roblox's implementation. While both aim to be a backpack system, the design principles of each are different.

The basic rundown is that **Purse aims to be as close to the CoreGui** while **Satchel aims to be an improvement over the CoreGui**.

## Design principles

* **As close to CoreGui as possible**: Purse aims to be as similar to Roblox's CoreGui as possible so players barely notice the difference
* **Sync with upstream**: We document changes and keep track of any deviations from the [CoreGui Backpack upstream](https://github.com/MaximumADHD/Roblox-Client-Tracker/blob/roblox/scripts/CoreScripts/Modules/BackpackScript.lua) which allows us to easily sync to the upstream.
* **More APIs with documentation**: Purse includes additional APIs beyond what the CoreGui Backpack provides, all thoroughly documented for developers.
