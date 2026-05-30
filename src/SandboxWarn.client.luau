--!strict

const function onSandboxedChanged()
	if script.IsInSandbox then
		warn("[Purse] Sandboxing detected. Tools will not work properly unless disabled.")
	end
end
script:GetPropertyChangedSignal("IsInSandbox"):Connect(onSandboxedChanged)
onSandboxedChanged()
