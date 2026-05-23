Purse is available on the [Creator Store], [Wally], and [GitHub Releases].

[Creator Store][Creator Store]{ .md-button } [GitHub Releases][GitHub Releases]{ .md-button } [Wally][Wally]{ .md-button }

Purse uses [RunContext] to run anywhere, so you do not need to move it from [Workspace], though it is recommeneded to parent to [`ReplicatedStorage`][ReplicatedStorage] for best practices and organizational reasons.

!!! danger

    Do not parent the Purse to any starter containers or it will run multiple times.

  [Creator Store]: https://create.roblox.com/store/asset/112061170330936
  [Wally]: https://wally.run/package/ryanlua/purse
  [GitHub Releases]: https://github.com/ryanlua/purse/releases
  [ReplicatedStorage]: https://create.roblox.com/docs/reference/engine/classes/ReplicatedStorage
  [RunContext]: https://devforum.roblox.com/t/1938784
  [Workspace]: https://create.roblox.com/docs/reference/engine/classes/Workspace

## Creator Store

1. Get the **Purse** model from the [Creator Store].

1. Open Roblox Studio and create a new place or open an existing place.

1. From Studio's Window menu or Home tab toolbar, open the [Toolbox] and select the **Inventory** tab.

    ![Toolbox](https://prod.docsiteassets.roblox.com/assets/studio/general/Toolbar-Toolbox.png)

    ![Inventory Tab](https://prod.docsiteassets.roblox.com/assets/studio/toolbox/Inventory-Tab.png)

1. Locate the **Purse** model and click it, or drag-and-drop it into the 3D view.

1. In the [Explorer] window, move the **Purse** model into [`ReplicatedStorage`][ReplicatedStorage].

1. With the **Purse** model selected, paste the following code into the [Command Bar]:

    ``` lua title="Disable Sandboxing for Selected Instances" linenums="1"
    const Selection = game:GetService("Selection")

    for _, instance in Selection:Get() do
    	instance.Sandboxed = false
    end
    ```

    !!! warning

        Models on the Creator Store including Purse are [sandboxed by default]. You must disable the sandboxing on Purse for it to work properly using the above command.

  [Toolbox]: https://create.roblox.com/docs/projects/assets/toolbox
  [Explorer]: https://create.roblox.com/docs/studio/explorer
  [Command Bar]: https://create.roblox.com/docs/studio/ui-overview#command-bar
  [sandboxed by default]: https://devforum.roblox.com/t/4634642

## GitHub Releases

1. Download the `Purse.rbxm` or `Purse.rbxmx` model file from [GitHub Releases].

    !!! info

        Binary (`.rbxm`) and XML (`.rbxmx`) model files contain the exact same model. `.rbxm` is a smaller file size to download.

1. Open Roblox Studio and create a new place or open an existing place.

1. In the [Explorer] window, insert **Purse** into [`ReplicatedStorage`][ReplicatedStorage].

1. Select the **Purse** model file you downloaded from GitHub.

## Wally

You are expected to already have Wally setup in your Rojo project and basic knowledge on how to use Wally packages.

1. Open your Rojo project in the code editor of your choice.

1. In the `wally.toml` file, add the [latest Wally version for Purse][Wally]. Your dependencies should look similar to this:

    ``` toml title="wally.toml"
    [dependencies]
    purse = "ryanlua/purse@{{ wally_version }}"
    ```

1. Install Purse from Wally by running `wally install`.
