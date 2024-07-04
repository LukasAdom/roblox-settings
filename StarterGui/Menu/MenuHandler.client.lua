local ts = game:GetService("TweenService");
local UIS = game:GetService("UserInputService");
local DOF = script.Parent.Frame.DOF;
local shadows = script.Parent.Frame.Shadows;
local Atmosphere = game.ReplicatedStorage.UnusedGraphics.Atmosphere;
local Atmosphereframe = script.Parent.Frame.Atmosphere;
local sunray = script.Parent.Frame.Sun;
local play = script.Parent.Frame.Frame.Play;
local frame = script.Parent.Frame;
local graphics = script.Parent.Frame.Frame.graphics;
local particles = script.Parent.Frame.Particles;
local snowwind = workspace.SnowWind.ParticleEmitter;
local snow = workspace.CurrentCamera:WaitForChild("Snow");
local player = game.Players.LocalPlayer
local preset = script.Parent.Frame.Presets;
local tstime = 1;
local InSelection = true;
local InSelection2 = true;
local idk = false;
local idk2 = false;
local idk3 = false;
local idk4 = false;
local idk5 = false;
local idk6 = false;
local idk7 = false;
local bruh = false;

script.Parent.Enabled = true;

DOF.TextButton.MouseButton1Click:Connect(function()
	if not idk then
		preset.TextButton.TextLabel.Text = "Custom";
		DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		game.Lighting.DoF.Enabled = true;
		idk = true;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.EnableDOF:FireServer();
	else
		preset.TextButton.TextLabel.Text = "Custom";
		DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		game.Lighting.DoF.Enabled = false;
		idk = false;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.DisableDOF:FireServer();
	end
end)

shadows.TextButton.MouseButton1Click:Connect(function()
	if not idk2 then
		preset.TextButton.TextLabel.Text = "Custom";
		shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		game.Lighting.GlobalShadows = true;
		idk2 = true;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.EnableSHADOW:FireServer();
	else
		preset.TextButton.TextLabel.Text = "Custom";
		shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		game.Lighting.GlobalShadows = false;
		idk2 = false;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.DisableSHADOW:FireServer();
	end
end)

sunray.TextButton.MouseButton1Click:Connect(function()
	if not idk3 then
		preset.TextButton.TextLabel.Text = "Custom";
		sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		game.Lighting.SunRays.Enabled = true;
		idk3 = true;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.EnableSUNRAY:FireServer();
	else
		preset.TextButton.TextLabel.Text = "Custom";
		sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		game.Lighting.SunRays.Enabled = false;
		idk3 = false;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.DisableSUNRAY:FireServer();
	end
end)
Atmosphereframe.TextButton.MouseButton1Click:Connect(function()
	if not idk4 then
		preset.TextButton.TextLabel.Text = "Custom";
		Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		Atmosphere.Parent = game.Lighting;
		idk4 = true;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.EnableATMOSPHERE:FireServer();
	else
		preset.TextButton.TextLabel.Text = "Custom";
		Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		Atmosphere.Parent = game.ReplicatedStorage.UnusedGraphics;
		idk4 = false;
		game.ReplicatedStorage.Remote.PRESET5:FireServer();
		game.ReplicatedStorage.Remote.DisableATMOSPHERE:FireServer();
	end
end)

if not idk7 then

play.MouseButton1Click:Connect(function()
	ts:Create(frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 1}):Play();
	for i, v in pairs(frame:GetChildren()) do
		ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 1}):Play();
	end
end)

play.MouseButton1Click:Connect(function()
		idk7 = true;
	ts:Create(script.Parent.Frame.Frame.Play, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(script.Parent.Frame.Frame.graphics, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(DOF.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(DOF.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(DOF.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(shadows.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(shadows.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(shadows.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(Atmosphereframe.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(Atmosphereframe.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(Atmosphereframe.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(sunray.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(sunray.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(sunray.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(particles.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(particles.ImageButton, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(particles.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(particles.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(particles.TextButton.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(particles.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 1}):Play();
	for i, v in pairs(particles.Frame:GetChildren()) do
		ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	end
	for i, v in pairs(preset.Frame:GetChildren()) do
		ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	end
	ts:Create(preset.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(preset.ImageButton, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(preset.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(preset.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 1}):Play();
	ts:Create(preset.TextButton.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 1}):Play();
	ts:Create(preset.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 1}):Play();
	ts:Create(preset, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 1}):Play();
	ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
		
	for i, v in pairs(preset.Frame:GetChildren()) do
		v.Visible = false
	end
	idk6 = false;
	ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	for i, v in pairs(particles.Frame:GetChildren()) do
		v.Visible = false
	end
	idk5 = false;
	end)
	idk7 = true;
end

particles.ImageButton.MouseButton1Click:Connect(function()
	if not idk5 then
		ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 0}):Play();
		ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,4.696, 0)}):Play();
		for i, v in pairs(particles.Frame:GetChildren()) do
			v.Visible = true
		end
		idk5 = true;
	else
		ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
		ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
		for i, v in pairs(particles.Frame:GetChildren()) do
			v.Visible = false
		end
		idk5 = false;
	end
end)

particles.Frame.Extreme.MouseButton1Click:Connect(function()
	particles.TextButton.TextLabel.Text = "Экстремальный";
	preset.TextButton.TextLabel.Text = "Custom";
	snowwind.Rate = 250;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = true;
	snow.ParticleEmitter4.Enabled = true;
	ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PARTICLE4:FireServer();
	game.ReplicatedStorage.Remote.PRESET5:FireServer();
	for i, v in pairs(particles.Frame:GetChildren()) do
		v.Visible = false
	end
	idk5 = false;
end)

particles.Frame.Low.MouseButton1Click:Connect(function()
	particles.TextButton.TextLabel.Text = "Low";
	preset.TextButton.TextLabel.Text = "Custom";
	snowwind.Rate = 40;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = false;
	snow.ParticleEmitter3.Enabled = false;
	snow.ParticleEmitter4.Enabled = false;
	ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PARTICLE1:FireServer();
	game.ReplicatedStorage.Remote.PRESET5:FireServer();
	for i, v in pairs(particles.Frame:GetChildren()) do
		v.Visible = false
	end
	idk5 = false;
end)

particles.Frame.High.MouseButton1Click:Connect(function()
	particles.TextButton.TextLabel.Text = "High";
	preset.TextButton.TextLabel.Text = "Custom";
	snowwind.Rate = 150;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = true;
	snow.ParticleEmitter4.Enabled = false;
	ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PARTICLE3:FireServer();
	game.ReplicatedStorage.Remote.PRESET5:FireServer();
	for i, v in pairs(particles.Frame:GetChildren()) do
		v.Visible = false
	end
	idk5 = false;
end)

particles.Frame.Medium.MouseButton1Click:Connect(function()
	particles.TextButton.TextLabel.Text = "Medium";
	preset.TextButton.TextLabel.Text = "Custom";
	snowwind.Rate = 80;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = false;
	snow.ParticleEmitter4.Enabled = false;
	ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PARTICLE2:FireServer();
	game.ReplicatedStorage.Remote.PRESET5:FireServer();
	for i, v in pairs(particles.Frame:GetChildren()) do
		v.Visible = false
	end
	idk5 = false;
end)

preset.ImageButton.MouseButton1Click:Connect(function()
	if not idk6 then
		ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 0}):Play();
		ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,4.696, 0)}):Play();
		for i, v in pairs(preset.Frame:GetChildren()) do
			v.Visible = true
		end
		idk6 = true;
	else
		ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
		ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
		for i, v in pairs(preset.Frame:GetChildren()) do
			v.Visible = false
		end
		idk6 = false;
	end
end)

preset.Frame.Extreme.MouseButton1Click:Connect(function()
	
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.DoF.Enabled = true;
	game.ReplicatedStorage.Remote.EnableDOF:FireServer();
	idk = true;
	
	shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.GlobalShadows = true;
	game.ReplicatedStorage.Remote.EnableSHADOW:FireServer();
	idk2 = true;
	
	sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.SunRays.Enabled = true;
	game.ReplicatedStorage.Remote.EnableSUNRAY:FireServer();
	idk3 = true;
	
	Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	Atmosphere.Parent = game.Lighting;
	game.ReplicatedStorage.Remote.EnableATMOSPHERE:FireServer();
	idk4 = true;
	
	preset.TextButton.TextLabel.Text = "Экстремальный";
	particles.TextButton.TextLabel.Text = "Экстремальный";
	snowwind.Rate = 250;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = true;
	snow.ParticleEmitter4.Enabled = true;
	game.ReplicatedStorage.Remote.PARTICLE4:FireServer();
	ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PRESET4:FireServer();
	for i, v in pairs(preset.Frame:GetChildren()) do
		v.Visible = false
	end
	idk6 = false;
end)

preset.Frame.High.MouseButton1Click:Connect(function()
	
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.DoF.Enabled = false;
	game.ReplicatedStorage.Remote.DisableDOF:FireServer();
	idk = false;
	
	shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.GlobalShadows = true;
	game.ReplicatedStorage.Remote.EnableSHADOW:FireServer();
	idk2 = true;

	sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.SunRays.Enabled = true;
	game.ReplicatedStorage.Remote.EnableSUNRAY:FireServer();
	idk3 = true;

	Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	Atmosphere.Parent = game.Lighting;
	game.ReplicatedStorage.Remote.EnableATMOSPHERE:FireServer();
	idk4 = true;

	preset.TextButton.TextLabel.Text = "High";
	particles.TextButton.TextLabel.Text = "High";
	snowwind.Rate = 150;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = true;
	snow.ParticleEmitter4.Enabled = false;
	game.ReplicatedStorage.Remote.PARTICLE3:FireServer();
	ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PRESET3:FireServer();
	for i, v in pairs(preset.Frame:GetChildren()) do
		v.Visible = false
	end
	idk6 = false;
end)

preset.Frame.Medium.MouseButton1Click:Connect(function()
	
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.DoF.Enabled = false;
	game.ReplicatedStorage.Remote.DisableDOF:FireServer();
	idk = false;

	shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.GlobalShadows = true;
	game.ReplicatedStorage.Remote.EnableSHADOW:FireServer();
	idk2 = true;

	sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.SunRays.Enabled = true;
	game.ReplicatedStorage.Remote.EnableSUNRAY:FireServer();
	idk3 = true;

	Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	Atmosphere.Parent = game.ReplicatedStorage.UnusedGraphics;
	game.ReplicatedStorage.Remote.DisableATMOSPHERE:FireServer();
	idk4 = false;

	preset.TextButton.TextLabel.Text = "Medium";
	particles.TextButton.TextLabel.Text = "Medium";
	snowwind.Rate = 80;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = true;
	snow.ParticleEmitter3.Enabled = false;
	snow.ParticleEmitter4.Enabled = false;
	game.ReplicatedStorage.Remote.PARTICLE2:FireServer();
	ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PRESET2:FireServer();
	for i, v in pairs(preset.Frame:GetChildren()) do
		v.Visible = false
	end
	idk6 = false;
end)

preset.Frame.Low.MouseButton1Click:Connect(function()
	
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.DoF.Enabled = false;
	game.ReplicatedStorage.Remote.DisableDOF:FireServer();
	idk = false;

	shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.GlobalShadows = false;
	game.ReplicatedStorage.Remote.DisableSHADOW:FireServer();
	idk2 = false;

	sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.SunRays.Enabled = false;
	game.ReplicatedStorage.Remote.DisableSUNRAY:FireServer();
	idk3 = false;

	Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	Atmosphere.Parent = game.ReplicatedStorage.UnusedGraphics;
	game.ReplicatedStorage.Remote.DisableATMOSPHERE:FireServer();
	idk4 = false;

	preset.TextButton.TextLabel.Text = "Low";
	particles.TextButton.TextLabel.Text = "Low";
	snowwind.Rate = 40;
	snow.ParticleEmitter1.Enabled = true;
	snow.ParticleEmitter2.Enabled = false;
	snow.ParticleEmitter3.Enabled = false;
	snow.ParticleEmitter4.Enabled = false;
	game.ReplicatedStorage.Remote.PARTICLE1:FireServer();
	ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
	ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
	game.ReplicatedStorage.Remote.PRESET1:FireServer();
	for i, v in pairs(preset.Frame:GetChildren()) do
		v.Visible = false
	end
	idk6 = false;
end)


UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.M then
			if idk7 then
					ts:Create(frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 0}):Play();
					for i, v in pairs(frame:GetChildren()) do
						ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 0}):Play();
					end
			
					for i, v in pairs(frame.Frame:GetChildren()) do
						ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					end
					ts:Create(DOF.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(DOF.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(DOF.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(shadows.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(shadows.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(shadows.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(Atmosphereframe.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(Atmosphereframe.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(Atmosphereframe.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(sunray.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(sunray.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(sunray.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(particles.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(particles.ImageButton, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(particles.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(particles.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(particles.TextButton.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(particles.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 0}):Play();
					for i, v in pairs(particles.Frame:GetChildren()) do
						ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					end
					for i, v in pairs(preset.Frame:GetChildren()) do
						ts:Create(v, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					end
					ts:Create(preset.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(preset.ImageButton, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(preset.TextButton.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(preset.TextButton.MainFrame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {ImageTransparency = 0}):Play();
					ts:Create(preset.TextButton.TextLabel, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {TextTransparency = 0}):Play();
					ts:Create(preset.Frame, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 0}):Play();
					ts:Create(preset, TweenInfo.new(tstime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundTransparency = 0}):Play();
					ts:Create(preset.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
					ts:Create(preset.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
					for i, v in pairs(preset.Frame:GetChildren()) do
						v.Visible = false
					end
					idk6 = false;
					ts:Create(particles.ImageButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Rotation = 180}):Play();
					ts:Create(particles.Frame, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0, false, 0), {Size = UDim2.new(0.121, 0,0.357, 0)}):Play();
					for i, v in pairs(particles.Frame:GetChildren()) do
						v.Visible = false
					end
					idk5 = false;
				idk7 = false;
			end
		end
	end
end)


game.ReplicatedStorage.Remote.DataReady.OnClientEvent:Connect(function()
print(game.Players.LocalPlayer.PLAYER_Data.DepthOfField_Data.Value)
if game.Players.LocalPlayer.PLAYER_Data.DepthOfField_Data.Value == true then
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
	game.Lighting.DoF.Enabled = true;
	idk = true;
else
	DOF.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
	game.Lighting.DoF.Enabled = false;
	idk = false;
	end
	
	print(game.Players.LocalPlayer.PLAYER_Data.Shadow_Data.Value)
	if game.Players.LocalPlayer.PLAYER_Data.Shadow_Data.Value == true then
		shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		game.Lighting.GlobalShadows = true;
		idk2 = true;
	else
		shadows.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		game.Lighting.GlobalShadows = false;
		idk2 = false;
	end
	
	print(game.Players.LocalPlayer.PLAYER_Data.Sunray_Data.Value)
	if game.Players.LocalPlayer.PLAYER_Data.Sunray_Data.Value == true then
		sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		game.Lighting.SunRays.Enabled = true;
		idk3 = true;
	else
		sunray.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		game.Lighting.SunRays.Enabled = false;
		idk3 = false;
	end
	
	print(game.Players.LocalPlayer.PLAYER_Data.Atmosphere_Data.Value)
	if game.Players.LocalPlayer.PLAYER_Data.Atmosphere_Data.Value == true then
		Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(255, 200, 0);
		Atmosphere.Parent = game.Lighting;
		idk4 = true;
	else
		Atmosphereframe.TextButton.MainFrame.ImageColor3 = Color3.fromRGB(104, 104, 104);
		Atmosphere.Parent = game.ReplicatedStorage.UnusedGraphics;
		idk4 = false;
	end
	
	-- ///////////Int/////////////
	
	print(game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value)
	if game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 1 then
		particles.TextButton.TextLabel.Text = "Low";
		snowwind.Rate = 40;
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = false;
		snow.ParticleEmitter3.Enabled = false;
		snow.ParticleEmitter4.Enabled = false;
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 2 then
		particles.TextButton.TextLabel.Text = "Medium";
		snowwind.Rate = 80;
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = false;
		snow.ParticleEmitter4.Enabled = false;
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 3 then
		particles.TextButton.TextLabel.Text = "High";
		snowwind.Rate = 150;
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = true;
		snow.ParticleEmitter4.Enabled = false;
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Particle_Data.Value == 4 then
		particles.TextButton.TextLabel.Text = "Экстремальный";
		snowwind.Rate = 250;
		snow.ParticleEmitter1.Enabled = true;
		snow.ParticleEmitter2.Enabled = true;
		snow.ParticleEmitter3.Enabled = true;
		snow.ParticleEmitter4.Enabled = true;
	end
	
	
	
	print(game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value)
	if game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value == 1 then
		preset.TextButton.TextLabel.Text = "Low";

	elseif game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value == 2 then
		preset.TextButton.TextLabel.Text = "Medium";

	elseif game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value == 3 then
		preset.TextButton.TextLabel.Text = "High";

	elseif game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value == 4 then
		preset.TextButton.TextLabel.Text = "Экстремальный";
		
	elseif game.Players.LocalPlayer.PLAYER_Data.Preset_Data.Value == 5 then
		preset.TextButton.TextLabel.Text = "Custom";
	end
end)
