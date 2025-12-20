--!strict

local StarterGui = game:GetService("StarterGui")

task.spawn(function()
	while task.wait(3) do
		if StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
			warn("Purse and CoreGui backpack enabled at the same time")
			break
		end
	end
end)
