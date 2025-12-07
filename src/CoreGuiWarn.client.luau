local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local connection
connection = RunService.Heartbeat:Connect(function()
	if StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
		warn("Purse and CoreGui backpack enabled at the same time")
		connection:Disconnect()
	end
end)
