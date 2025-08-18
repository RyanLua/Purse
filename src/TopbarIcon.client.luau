--!strict

local UserInputService = game:GetService("UserInputService")

local BackpackScript = require(script.Parent)
local Icon = require(script.Parent.Parent.topbarplus)

local iconSelectedImage = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local iconDeselectedImage = "rbxasset://textures/ui/TopBar/inventoryOff.png"

local icon = Icon.new()
icon:setCaption("Inventory")
icon:setImage(iconSelectedImage, "Selected")
icon:setImage(iconDeselectedImage, "Deselected")
icon:setImageScale(1)
icon:autoDeselect(false)
icon:setOrder(-1)
icon:bindToggleKey(Enum.KeyCode.Backquote)

UserInputService.InputBegan:Connect(function(input: InputObject, gameProcessedEvent: boolean): ()
	local inputType = input.UserInputType
	if not gameProcessedEvent then
		if inputType == Enum.UserInputType.MouseButton1 or inputType == Enum.UserInputType.Touch then
			icon:deselect()
		end
	end
end)

icon.toggled:Connect(function(): ()
	BackpackScript.OpenClose()
end)
