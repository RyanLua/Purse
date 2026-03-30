[Script capabilities] is used to sandbox Purse and tools to ensure safety and prevent malicious code.

This is optional and disabled by default by can be enabled using the [`Sandboxed`][Sandboxed] property.

!!! warning

    By enabling script capabilities, any tools will be sandboxed. Make sure you have [`Capabilities`][Capabilities] for your tools set on top of Purse or your tools will error.

  [Script capabilities]: https://create.roblox.com/docs/scripting/capabilities
  [Capabilities]: https://create.roblox.com/docs/scripting/capabilities#capabilities
  [Sandboxed]: https://create.roblox.com/docs/scripting/capabilities#sandboxed-container

Purse uses the following capabilities:

* **RunClientScript** - Run Purse on the client
* **AccessOutsideWrite** - Access instances outside the container
* **AssetRead** - Check for latest version
* **AssetManagement** - Preload icon images
    * This capability does not allow read, create, or update operations on assets
* **AvatarAppearance** - Equip and unequip tools
* **AvatarBehavior** - Equip and unequip tools
* **Basic** - Run Purse
* **CreateInstances** - Create GUI instances
* **Input** - Binding for equipping slots and toggling inventory
* **Players** - Access player backpack
* **UI** - Access player GUI
