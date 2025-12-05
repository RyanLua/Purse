--!strict

local BackpackScript = require(script.Parent)
local Icon = require(script.Parent.Parent.topbarplus)

local ICON_SELECTED_IMAGE = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local ICON_DESELECTED_IMAGE = "rbxasset://textures/ui/TopBar/inventoryOff.png"

local icon = Icon.new()
icon:setCaption("Inventory")
icon:setImage(ICON_SELECTED_IMAGE, "Selected")
icon:setImage(ICON_DESELECTED_IMAGE, "Deselected")
icon:setImageScale(1)
icon:autoDeselect(false)
icon:setOrder(-1)
icon:bindToggleKey(Enum.KeyCode.Backquote)

BackpackScript.StateChanged.Event:Connect(function(isNowOpen)
	if isNowOpen then
		icon:select()
	else
		icon:deselect()
	end
end)

icon.toggled:Connect(function(_isSelected, fromSource)
	if fromSource == "User" then
		BackpackScript.OpenClose()
	end
end)
