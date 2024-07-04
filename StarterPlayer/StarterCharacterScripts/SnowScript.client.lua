local playerCamera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local snowSource = script.Parent:WaitForChild("Snow"):Clone()
local setPos = Vector3.new
local Allow = script.Allow

if Allow.Value == true then
script.Parent.Snow:Destroy()
snowSource.Parent = playerCamera
RunService.RenderStepped:connect(function()
	snowSource.Position = playerCamera.CFrame.p + setPos(20, 0.5, 0)
	end)
end