local snow = workspace.CurrentCamera:WaitForChild("Snow")
local snowwind = workspace.SnowWind.ParticleEmitter;
local textlable = script.Parent.Tuto:WaitForChild("Frame").TextLabel3
local yes = true;

local function tw (object,text)
	for i = 1,#text,1 do
		object.Text = string.sub(text,1,i)
		wait(0.05)
	end
end

script.Parent.Tuto:WaitForChild("Frame").Visible = false;

game.ReplicatedStorage.Remote.SnowGONE.OnClientEvent:Connect(function()
	snow.ParticleEmitter1.Enabled = false;
	snow.ParticleEmitter2.Enabled = false;
	snow.ParticleEmitter3.Enabled = false;
	snow.ParticleEmitter4.Enabled = false;
end)

game.ReplicatedStorage.Remote.SnowYES.OnClientEvent:Connect(function()
	if yes then
	script.Parent.Tuto.Frame.Visible = true;
		tw(textlable,"Are you Sure?");	
		
		yes = false;
		
		script.Parent.Tuto.Frame.ImageButton2.MouseButton1Click:Connect(function()
			script.Parent.Tuto.Frame.Visible = false;
			yes = true;
		end)
		
		script.Parent.Tuto.Frame.ImageButton.MouseButton1Click:Connect(function()
			game:GetService("TeleportService"):Teleport(6146321069)
			script.Parent.Tuto.Frame.Visible = false;
		end)
		
		script.Parent.Tuto.Frame.ImageButton.MouseButton1Click:Connect(function()
			
		end)
	end
	
	if game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 1 then
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = false;
		snow.ParticleEmitter3.Enabled = false;
		snow.ParticleEmitter4.Enabled = false;
	
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 2 then
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = false;
		snow.ParticleEmitter4.Enabled = false;
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 3 then
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = true;
		snow.ParticleEmitter4.Enabled = false;
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 4 then
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = true;
		snow.ParticleEmitter4.Enabled = true;
	end
end)
