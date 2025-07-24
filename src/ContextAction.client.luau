--!strict

local ContextActionService = game:GetService("ContextActionService")
local BackpackScript = require(script.Parent.BackpackScript)

local ACTION_NAME = "RBXBackpackToggle"

local function handleAction(actionName, inputState, _inputObject)
	if actionName == ACTION_NAME and inputState == Enum.UserInputState.Begin then
		BackpackScript.OpenClose()
	end
end

ContextActionService:BindAction(ACTION_NAME, handleAction, false, Enum.KeyCode.Backquote)
