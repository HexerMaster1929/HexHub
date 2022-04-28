local StarterGui = game:GetService("StarterGui")

-- HexHub UI Notifs: Version Notification

StarterGui:SetCore("SendNotification", {
    Title = "HexHub Version";
    Text = "Version 1.7 ~ HexHub is up to date!"
})

-- HexHub UI Notifs: Loaded Notification
wait(0.9)
StarterGui:SetCore("SendNotification", {
    Title = "HexHub";
    Text = "Hexhub Loaded! Enjoy!";
    Icon = "rbxassetid://9460077691"
})


-- Finds car before loading, Ensuring the GUI will work.
function findCar()
    local vehicle = workspace.Vehicles:getChildren()
    for i=1,#vehicle do
    if vehicle[i]:findFirstChild("owner") then
    if vehicle[i].owner.Value == game.Players.LocalPlayer.Name then
    myCar = vehicle[i]
    end
    end
    end
    end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("HexHub V1.7 - Vehicle Simulator", "GrapeTheme")

local LocalPlayerTab = Window:NewTab("Player")
local CarModsTab = Window:NewTab("Car Mods")
local AutofarmTab = Window:NewTab("Autofarm")
local CratesTab = Window:NewTab("Crates")
local CreditTab = Window:NewTab("Credits & Settings")

-- Player Tab Stuff

local PlayerStuffSection = LocalPlayerTab:NewSection("Player Stuff")

PlayerStuffSection:NewSlider("Walkspeed", "Changes Your Walkspeed!", 1000, 16, function(WS) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
end)

PlayerStuffSection:NewSlider("Jump Height", "Changes your Jump Height!", 1000, 50, function(JP) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP
end)

PlayerStuffSection:NewButton("Get Perks", "Get owner Perks!", function(GetPerks)
    game:GetService("Players").LocalPlayer.UserId = 1099580
end)

-- Car Mods Tab Stuff

local CarModsSection = CarModsTab:NewSection("Mods")
local CarPresetsSection = CarModsTab:NewSection("Presets")

CarModsSection:NewTextBox("Nitro Speed", "Change Nitro Speed!", function(NSV)
	findCar()
    myCar.Handling.Nitro.NitroSpeed.Value = NSV
end)

CarModsSection:NewTextBox("Nitro Force", "Change Nitro Force!", function(NFV)
	findCar()
    myCar.Handling.Nitro.NitroForce.Value = NFV
end)

CarModsSection:NewTextBox("Jump Height", "Change Jump Height!", function(JHV)
	findCar()
    myCar.Handling.TurboJump.TurboJumpHeight.Value = JHV
end)

CarModsSection:NewTextBox("Torque", "Change Torque!", function(TQV)
	findCar()
    myCar.Handling.Torque.Value = TQV

end)

CarModsSection:NewTextBox("Speed", "Change Speed!", function(SPV)
	findCar()
    myCar.Handling.MaxSpeed.Value = SPV
myCar.Handling.SteeringRadiusConstant.Value = 15000
end)

CarModsSection:NewTextBox("Braking", "Change Braking!", function(BKV)
	findCar()
    myCar.Handling.Braking.Value = BKV
end)

CarPresetsSection:NewButton("Super Car", "Transforms your car into a Super car!", function()
    findCar()
myCar.Handling.MaxSpeed.Value = 10000
myCar.Handling.Torque.Value = 55555
myCar.Handling.SteeringRadiusConstant.Value = 15000
myCar.Handling.FrictionRoad.Value = 250
myCar.Handling.Nitro.NitroSpeed.Value = 100000
myCar.Handling.Nitro.NitroForce.Value = 100000
myCar.Handling.Braking.Value = 100000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 25
end)

CarPresetsSection:NewButton("Extreme Car", "Transforms your car into a Extreme car!", function()
    findCar()
    myCar.Handling.MaxSpeed.Value = 100000
    myCar.Handling.Torque.Value = 555555
    myCar.Handling.SteeringRadiusConstant.Value = 150000
    myCar.Handling.FrictionRoad.Value = 250
    myCar.Handling.Nitro.NitroSpeed.Value = 400000
    myCar.Handling.Nitro.NitroForce.Value = 400000
    myCar.Handling.Braking.Value = 1000000
    myCar.Handling.TurboJump.TurboJumpHeight.Value = 250
end)

CarPresetsSection:NewKeybind("Extreme Car keybind", "Useful for if you reset and you don't want to open the UI to set a preset!", Enum.KeyCode.Q, function()
	 findCar()
    myCar.Handling.MaxSpeed.Value = 100000
    myCar.Handling.Torque.Value = 555555
    myCar.Handling.SteeringRadiusConstant.Value = 150000
    myCar.Handling.FrictionRoad.Value = 250
    myCar.Handling.Nitro.NitroSpeed.Value = 400000
    myCar.Handling.Nitro.NitroForce.Value = 400000
    myCar.Handling.Braking.Value = 1000000
    myCar.Handling.TurboJump.TurboJumpHeight.Value = 250
end)


CarPresetsSection:NewButton("Smooth Drifting", "Transforms your car into a Smooth Drifting car!", function()
    findCar()
myCar.Handling.MaxSpeed.Value = 5000
myCar.Handling.Torque.Value = 20000
myCar.Handling.SteeringRadiusConstant.Value = 15000
myCar.Handling.FrictionRoad.Value = 100
myCar.Handling.Nitro.NitroSpeed.Value = 10000
myCar.Handling.Nitro.NitroForce.Value = 10000
myCar.Handling.Braking.Value = 100000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 25
end)

CarPresetsSection:NewButton("Racing", "Transforms your car into a Racing car!", function()
    findCar()
myCar.Handling.MaxSpeed.Value = 1000
myCar.Handling.Torque.Value = 30000
myCar.Handling.SteeringRadiusConstant.Value = 150000
myCar.Handling.FrictionRoad.Value = 300
myCar.Handling.Nitro.NitroSpeed.Value = 100000
myCar.Handling.Nitro.NitroForce.Value = 100000
myCar.Handling.Braking.Value = 1000000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 45
end)

-- Autofarm Tab stuff

local VehicleFarmSection = AutofarmTab:NewSection("Vehicle")
local CrateFarmSection = AutofarmTab:NewSection("Crates")

VehicleFarmSection:NewLabel("Broken Due to update.")

CrateFarmSection:NewButton("Get All Crates", "Grabs All Spawned Crates!", function()
    local crates = workspace:getChildren()
for i=1,#crates do
if crates[i].ClassName == "Model" then
local crates2 = crates[i]:getChildren()
for i=1,#crates2 do
if crates2[i].ClassName == "Model" then
local crates3 = crates2[i]:getChildren()
for i=1,#crates3 do
if crates3[i].ClassName == "MeshPart" then
if crates3[i]:findFirstChild("Smoke") then
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(crates3[i].Position.X+30,crates3[i].Position.Y+5,crates3[i].Position.Z))
wait()
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(crates3[i].Position.X,crates3[i].Position.Y,crates3[i].Position.Z))
wait(4)
end
end
end
end
end
end
end
end)

-- Crates Tab Stuff

local CrateVisualsSection = CratesTab:NewSection("Visuals")
local CrateFarmSectionOld = CratesTab:NewSection("Farm Crates")

CrateFarmSectionOld:NewLabel("Crate Farm Moved To Autofarm Tab.")

CrateVisualsSection:NewButton("Crate ESP", "Turns On ESP For Crates!", function()
    local crates = workspace:getChildren()
for i=1,#crates do
if crates[i].ClassName == "Model" then
local crates2 = crates[i]:getChildren()
for i=1,#crates2 do
if crates2[i].ClassName == "Model" then
local crates3 = crates2[i]:getChildren()
for i=1,#crates3 do
if crates3[i].ClassName == "MeshPart" then
if crates3[i]:findFirstChild("Smoke") then
if crates3[i]:findFirstChild("BoxHandleAdornment") then
	crates3[i]:findFirstChild("BoxHandleAdornment"):Remove()
else
local a = Instance.new("BoxHandleAdornment",crates3[i])
a.Size = Vector3.new(10,500,6)
a.SizeRelativeOffset = Vector3.new(0,135,0)
a.Color3 = Color3.fromRGB(0,255,0)
a.Transparency = 0.5
a.AlwaysOnTop = true
a.Adornee = crates3[i]
a.ZIndex = 1
local b = Instance.new("BoxHandleAdornment",crates3[i])
b.Size = Vector3.new(10,4,6)
b.Color3 = Color3.fromRGB(0,0,255)
b.Transparency = 0.3
b.AlwaysOnTop = true
b.Adornee = crates3[i]
b.ZIndex = 1
end
end
end
end
end
end
end
end
end)

-- Credits Tab Stuff

local SettingsSection = CreditTab:NewSection("Settings")
local UpdateLogSection = CreditTab:NewSection("Update Log")
local CreditSection = CreditTab:NewSection("Credit")

SettingsSection:NewKeybind("Toggle UI Keybind", "Toggles the GUI!", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

UpdateLogSection:NewLabel("Version 1.7 - Fixed Autofarm, Added Extreme Car Keybind [Q]")

UpdateLogSection:NewLabel("Version 1.6 - Due to a Patch Update, Autofarm has been removed until it is fixed.")

UpdateLogSection:NewLabel("Version 1.5 - Fixed Toggle Issues")

UpdateLogSection:NewLabel("Version 1.4 - Fixed Crates farm")

UpdateLogSection:NewLabel("Version 1.3 - Moved Crates Farm To Autofarm Tab")

UpdateLogSection:NewLabel("Version 1.2 - Added Autofarm")

UpdateLogSection:NewLabel("Version 1.0 - Added Braking")

CreditSection:NewLabel("Duky#1745 - Designer")

CreditSection:NewLabel("HexerMaster1929 - Re-writer, Scripter")

CreditSection:NewButton("Copy Discord Invite", "Copy's Discord Server Invite!", function()
    setclipboard("Test Invite")
end)

