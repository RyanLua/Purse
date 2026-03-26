[Script capabilities] is used to sandbox Purse to ensure safety and prevent malicious code.

!!! danger

    Malicious clones may remove script capabilities sandboxing. Double check the [`Capabilities`][Capabilities] property and that [`Sandboxed`][Sandboxed] is enabled.

  [Script capabilities]: https://create.roblox.com/docs/scripting/capabilities
  [Capabilities]: https://create.roblox.com/docs/scripting/capabilities#capabilities
  [Sandboxed]: https://create.roblox.com/docs/scripting/capabilities#sandboxed-container

Purse uses the following capabilities:

* **RunClientScript** - Run Purse on the client
* **AccessOutsideWrite** - Access instances outside the container
* **AssetRead** - Check for latest version
* **AssetManagement** - Preload icon images
    * This capability does not allow read, create, or update operations on assets
* **Basic** - Run Purse
* **CreateInstances** - Create GUI instances
* **Input** - Binding for equipping slots and toggling inventory
* **Players** - Access player backpack
* **UI** - Access player GUI
