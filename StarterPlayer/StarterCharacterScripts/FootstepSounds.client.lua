local materialSounds = 
{
	[Enum.Material.Grass] = "rbxassetid://507863105",
	[Enum.Material.Pebble] = "rbxassetid://131436155",
	[Enum.Material.Wood] = "rbxassetid://2015989574",
	[Enum.Material.WoodPlanks] = "rbxassetid://2015989574",
	[Enum.Material.Plastic] = "rbxassetid://4453297814",
	[Enum.Material.SmoothPlastic] = "rbxassetid://4453297814",
	[Enum.Material.Sand] = "rbxassetid://265653329",
	[Enum.Material.Snow] = "rbxassetid://138080013",
	[Enum.Material.Concrete] = "rbxassetid://2719426521",
	[Enum.Material.Slate] = "rbxassetid://6055309536",
	[Enum.Material.Metal] = "rbxassetid://1439074022",
	[Enum.Material.DiamondPlate] = "rbxassetid://3205591350",
	[Enum.Material.Ground] = "rbxassetid://4416041299",
}


local char = script.Parent
		
local humanoid = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")
		
local footstepsSound = hrp:WaitForChild("Running")
		
humanoid:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
			
	local floorMat = humanoid.FloorMaterial
	local soundOfMat = materialSounds[floorMat]
			
	if soundOfMat then
		footstepsSound.SoundId = soundOfMat
		
	else
		footstepsSound.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
	end
end)