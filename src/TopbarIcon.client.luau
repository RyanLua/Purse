--!strict

local BackpackScript = require(script.Parent.BackpackScript)
local Icon = require(script.Parent.Packages:WaitForChild("topbarplus"))

local iconSelectedImage = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local iconDeselectedImage = "rbxasset://textures/ui/TopBar/inventoryOff.png"

local icon = Icon.new()
icon:setCaption("Inventory")
icon:setImage(iconSelectedImage, "Selected")
icon:setImage(iconDeselectedImage, "Deselected")
icon:setImageScale(1)
icon:autoDeselect(false)
icon:setOrder(-1)
icon:setCaptionHint(Enum.KeyCode.Backquote)

icon.toggled:Connect(function(): ()
	BackpackScript.OpenClose()
end)
