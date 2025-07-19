--!strict

local BackpackScript = require(script.Parent.BackpackScript)
local Icon = require(script.Parent.Packages:WaitForChild("topbarplus"))

local ARROW_IMAGE_OPEN = "rbxasset://textures/ui/Backpack_Open.png"
local ARROW_IMAGE_CLOSE = "rbxasset://textures/ui/Backpack_Close.png"

local icon = Icon.new()
icon:setCaption("Backpack")
icon:setImage(ARROW_IMAGE_OPEN, "Selected")
icon:setImage(ARROW_IMAGE_CLOSE, "Deselected")
icon:autoDeselect(false)
icon:setOrder(-1)

icon.toggled:Connect(function(): ()
	BackpackScript.OpenClose()
end)
