local DataStore2 = require(game.ServerScriptService:WaitForChild("DataStore2"));
local allow = false;
local allow2 = false;
local repli = game:GetService("ReplicatedStorage");

local dft = 1;

game.Players.PlayerAdded:Connect(function(plr)
	
	local DOFTrue_Data = DataStore2("DOF",plr);
	local SHADOWTrue_Data = DataStore2("SHADOW",plr);
	local SUNRAYTrue_Data = DataStore2("SUN",plr);
	local ATMOSPHERETrue_Data = DataStore2("ATMO",plr);
	local PARTICLETrue_Data = DataStore2("PARTI",plr);
	local PRESETTrue_Data = DataStore2("PRE",plr);
	local SEATTrue_Data = DataStore2("SEAT",plr);
	
	local plr_Data = Instance.new("Folder",plr);
	plr_Data.Name = "PLAYER_Data";
	
	local DOF_Data = Instance.new("BoolValue",plr_Data);
	DOF_Data.Name = "DepthOfField_Data";
	
	local SHADOW_Data = Instance.new("BoolValue",plr_Data);
	SHADOW_Data.Name = "Shadow_Data";
	
	local SUNRAY_Data = Instance.new("BoolValue",plr_Data);
	SUNRAY_Data.Name = "Sunray_Data";
	
	local ATMOSPHERE_Data = Instance.new("BoolValue",plr_Data);
	ATMOSPHERE_Data.Name = "Atmosphere_Data";
	
	local PARTICLE_Data = Instance.new("IntValue",plr_Data);
	PARTICLE_Data.Name = "Particle_Data";
	
	local PRESET_Data = Instance.new("IntValue",plr_Data);
	PRESET_Data.Name = "Preset_Data";
	
	local SEAT_Data = Instance.new("IntValue",plr_Data);
	SEAT_Data.Name = "Seat_Data";
	
	local function DOF_Update(UpdateValue)
		DOF_Data.Value = DOFTrue_Data:Get(UpdateValue);
	end	
	local function SHADOW_Update(UpdateValue)
		SHADOW_Data.Value = SHADOWTrue_Data:Get(UpdateValue);
	end	
	local function SUNRAY_Update(UpdateValue)
		SUNRAY_Data.Value = SUNRAYTrue_Data:Get(UpdateValue);
	end	
	local function ATMOSPHERE_Update(UpdateValue)
		ATMOSPHERE_Data.Value = ATMOSPHERETrue_Data:Get(UpdateValue);
	end	
	local function PARTICLE_Update(UpdateValue)
		PARTICLE_Data.Value = PARTICLETrue_Data:Get(UpdateValue);
	end	
	local function PRESET_Update(UpdateValue)
		PRESET_Data.Value = PRESETTrue_Data:Get(UpdateValue);
	end	
	local function SEAT_Update(UpdateValue)
		SEAT_Data.Value = SEATTrue_Data:Get(UpdateValue);
	end	
	SHADOW_Update(false);
	DOF_Update(false);
	SUNRAY_Update(false);
	ATMOSPHERE_Update(false);
	PARTICLE_Update(dft);
	PRESET_Update(dft);
	SEAT_Update(0);
	
	DOFTrue_Data:OnUpdate(DOF_Update);
	SHADOWTrue_Data:OnUpdate(SHADOW_Update);
	SUNRAYTrue_Data:OnUpdate(SUNRAY_Update);
	ATMOSPHERETrue_Data:OnUpdate(ATMOSPHERE_Update);
	PARTICLETrue_Data:OnUpdate(PARTICLE_Update);
	PRESETTrue_Data:OnUpdate(PRESET_Update);
	repli.Remote.DataReady:FireClient(plr);
end)

--// True/false //--

game.ReplicatedStorage.Remote.EnableDOF.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("DOF",player);
		DOF_DATASTORE2:Set(true,false);
end)
game.ReplicatedStorage.Remote.DisableDOF.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("DOF",player);
		DOF_DATASTORE2:Set(false,false);
end)
game.ReplicatedStorage.Remote.EnableSHADOW.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("SHADOW",player);
		DOF_DATASTORE2:Set(true,false);
end)
game.ReplicatedStorage.Remote.DisableSHADOW.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("SHADOW",player);
		DOF_DATASTORE2:Set(false,false);
end)
game.ReplicatedStorage.Remote.EnableSUNRAY.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("SUN",player);
	DOF_DATASTORE2:Set(true,false);
end)
game.ReplicatedStorage.Remote.DisableSUNRAY.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("SUN",player);
	DOF_DATASTORE2:Set(false,false);
end)
game.ReplicatedStorage.Remote.EnableATMOSPHERE.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("ATMO",player);
	DOF_DATASTORE2:Set(true,false);
end)
game.ReplicatedStorage.Remote.DisableATMOSPHERE.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("ATMO",player);
	DOF_DATASTORE2:Set(false,false);
end)

--// IntValue //--

game.ReplicatedStorage.Remote.PARTICLE1.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PARTI",player);
	DOF_DATASTORE2:Set(1,1);
end)
game.ReplicatedStorage.Remote.PARTICLE2.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PARTI",player);
	DOF_DATASTORE2:Set(2,1);
end)
game.ReplicatedStorage.Remote.PARTICLE3.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PARTI",player);
	DOF_DATASTORE2:Set(3,1);
end)
game.ReplicatedStorage.Remote.PARTICLE4.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PARTI",player);
	DOF_DATASTORE2:Set(4,1);
end)

game.ReplicatedStorage.Remote.PRESET1.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PRE",player);
	DOF_DATASTORE2:Set(1,1);
end)
game.ReplicatedStorage.Remote.PRESET2.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PRE",player);
	DOF_DATASTORE2:Set(2,1);
end)
game.ReplicatedStorage.Remote.PRESET3.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PRE",player);
	DOF_DATASTORE2:Set(3,1);
end)
game.ReplicatedStorage.Remote.PRESET4.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PRE",player);
	DOF_DATASTORE2:Set(4,1);
end)
game.ReplicatedStorage.Remote.PRESET5.OnServerEvent:Connect(function(player)
	local DOF_DATASTORE2 = DataStore2("PRE",player);
	DOF_DATASTORE2:Set(5,1);
end)


--// SEAT SEAT SEAT SEAT SEAT SEAT //--

game.Players.PlayerAdded:Connect(function(plr)

local Seat =  game.Workspace.RussianMilitaryTruck.Body.Seat1

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(1,0);
	end
end)

local Seat =  game.Workspace.RussianMilitaryTruck.Body.Seat2

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(2,0);
	end
end)

local Seat =  game.Workspace.RussianMilitaryTruck.Body.Seat3

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(3,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat4

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(4,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat5

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(5,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat6

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(6,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat7

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(7,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat8

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(8,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat9

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(9,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat10

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(10,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat11

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(11,0);
	end
end)

local Seat = game.Workspace.RussianMilitaryTruck.Body.Seat12

Seat:GetPropertyChangedSignal("Occupant"):Connect(function()
	if Seat.Occupant ~= nil then
		local Char = Seat.Occupant.Parent
			local DOF_DATASTORE2 = DataStore2("SEAT",plr);
			DOF_DATASTORE2:Set(12,0);
	end
	end)
end)