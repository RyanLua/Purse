# Purse

Purse is a fork of the [default Roblox backpack](https://github.com/MaximumADHD/Roblox-Client-Tracker/blob/roblox/scripts/CoreScripts/Modules/BackpackScript.lua) decoupled from the CoreGui, allowing developers access to APIs that were previously unavailable and allowing for code modifications.

* Source code modification
* Developer APIs for controlling the inventory
* Not reliant on CoreGui permissions

![Screenshot of Purse](assets/screenshot.png)

What Purse is not is being a major improvement over the CoreGui backpack but a copy of it so that developers can iterate on it themselves. They are no additional features beyond what the CoreGui backpack provides.

## Notes

Because we can't access the topbar without CoreGui, we use [TopbarPlus](https://devforum.roblox.com/t/topbarplus/1017485). This is one of the major differences in terms of functionality. TopbarPlus may not be as familiar to use on consoles and VR.
