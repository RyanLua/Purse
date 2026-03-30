--!strict

const ContextActionService = game:GetService("ContextActionService")
const BackpackScript = require(script.Parent)

const ACTION_NAME = "BackpackToggle"

const function handleAction(actionName, inputState, _inputObject)
	if actionName == ACTION_NAME and inputState == Enum.UserInputState.Begin then
		if BackpackScript.OpenClose then
			BackpackScript.OpenClose()
		end
	end
end

ContextActionService:BindAction(ACTION_NAME, handleAction, false, Enum.KeyCode.Backquote)
