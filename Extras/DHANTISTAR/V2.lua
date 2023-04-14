local UI = game:GetObjects("rbxassetid://12923461037")[1]
local Notice = UI.Main.CornerHolder.StarNotice
local List = UI.Main.StarList
local SettingsFrame = UI.Main.Settings
local LPLR = game.Players.LocalPlayer
local Assets = UI.Assets



local Request = http_request or syn and syn.request or request or (fluxus and fluxus.request) or nil
assert((Request),"Cannot Start Antistar, Exploit Requires Request Function")
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Extras/DHANTISTAR/HexMes_Messagebox.lua"))()
local MessageName;

Ver = "2.0B"

local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local Themes = {
	Default = {
		BorderColor = Color3.fromRGB(28, 28, 255)
	}
}



--local SHOPMODULE = loadstring(game:HttpGet"https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Extras/DHANTISTAR/ServerHop.lua")()

Settings = {
	SearchInterval = 3, -- interval between automatically searching for stars in server (in seconds)
	ListCommand = "/e sl", -- command to open the star list
	Debug = false, -- will trigger star warning for all players / more
	CurrentTheme = "Default", -- {"Default"}
	MainSettings = {
		SearchOptions = {"DisplayName","Group","Both"},
		CurrentSearchOption = "Both",
		FakeStar = true,
		HideSelf = true,
		
	}
}

Star = "⭐" or "U+2B50"
StarGroup = 8068202
StarTable = {}
local WarningBlacklists = {}
local WarningListBlacklists = {}

HTTP = game:GetService("HttpService")
Players = game:GetService("Players")
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
StarterGui = game:GetService("StarterGui")
GuiService = game:GetService("GuiService")
Lighting = game:GetService("Lighting")
ContextActionService = game:GetService("ContextActionService")
--NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
GroupService = game:GetService("GroupService")
PathService = game:GetService("PathfindingService")
SoundService = game:GetService("SoundService")
Teams = game:GetService("Teams")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")

Players.LocalPlayer.CharacterAdded:Connect(function()
	if Settings.MainSettings.FakeStar then
		if game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName == "[⭐]"..game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName then return end
		game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName = "[⭐]"..game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName
	end
end)

function GetInfo(Plr)
	--local InfoAPI = "https://users.roproxy.com/v1/users/"..tostring(Plr.UserId)
	local Data;
	local Success,Fail = pcall(function()
		local r = Request(
			{
				['Method'] = 'GET',
				['Headers'] = {
					--	['discordLinkRequest'] = "true"
				},
				['Url'] = 'https://users.roblox.com/v1/users/'..tostring(Plr.UserId)
			})
		if r.StatusCode ~= 200 or not r.Successful then
			--warn("Success")
			--Data = r.Body
				warn("Error:",Data)
		else
warn("Success")
			Data = r.Body
			--	warn(Data)
		end
	end)
	if Success and Data then
		warn(HTTP:JSONDecode(Data))
		return HTTP:JSONDecode(Data)
	elseif Fail then
		warn("Error Fetching User Info From API, ErrorCode: ",tostring(Fail))
	end
end

function FormatAge(Date)
	local createdTime = DateTime.fromIsoDate(Date).UnixTimestamp
	local currentTime = DateTime.now().UnixTimestamp

	local accountAgeDays = (currentTime - createdTime)/86400
	return math.floor(accountAgeDays)
end

function IsStar(a)
	game.Players.PlayerAdded:Connect(function(Player)
	local Char = game.Workspace:FindFirstChild(tostring(Player)) or Player.Character
	local Humanoid = Char:FindFirstChildOfClass("Humanoid")
	if Settings.MainSettings.CurrentSearchOption == "DisplayName" then
	if string.match(tostring(Humanoid.DisplayName),Star) then
		warn("Star Found")
		return true, GetInfo(Player)
	else
		--if game:GetService("RunService"):IsStudio() or Settings.Debug then
		--return true, GetInfo(Player)
		--else
		return false
		--end
		end
	elseif Settings.MainSettings.CurrentSearchOption == "Group" then
			if Player:IsInGroup(StarGroup) then
				warn("Star Found")
				return true, GetInfo(Player)
			else
				return false
				
			end
		elseif Settings.MainSettings.CurrentSearchOption == "Both" then
			if string.match(tostring(Humanoid.DisplayName),Star) or Player:IsInGroup(StarGroup) then
				warn("Star Found")
				return true, GetInfo(Player)
			else
				--if game:GetService("RunService"):IsStudio() or Settings.Debug then
				--return true, GetInfo(Player)
				--else
				return false
				--end
			end
		end
		end)
end





function StarWarn(Info)
	if table.find(WarningBlacklists,Info.id) ~= nil then return end
	Notice.Inner.Content.StarNotice.UName.Content.Text = Info.name
	Notice.Inner.Content.StarNotice.Dispname.Content.Text = Info.displayName
	Notice.Inner.Content.StarNotice.Icon.Image = game:GetService("Players"):GetUserThumbnailAsync(Info.id,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
	Notice.Inner.Content.StarNotice.Age.Content.Text = FormatAge(Info.created).." Day(s)"
	Notice.Visible = true
	Notice.Inner.Buttons.SetCancel.Cancel.MouseButton1Down:Connect(function()
		Notice.Visible = false
	end)
	Notice.Inner.Buttons.SetCancel.SHOP.MouseButton1Down:Connect(function()
		--SHOPMODULE:Teleport(game.PlaceId)
		local PlaceId, JobId = game.PlaceId, game.JobId
		if Request then
			local servers = {}
			local req = Request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)})
			local body = HTTP:JSONDecode(req.Body)
			if body and body.data then
				for i, v in next, body.data do
					if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
						table.insert(servers, 1, v.id)
					end
				end
			end
			if #servers > 0 then
				TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
			else

				local MName = tostring(math.random(1,100000000))
				MessageBox.Show({
					MessageName = MName, -- required if you add a custom close button to the message
					Title = "Error!",
					Content = "Couldn't Find A Server!",
					BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
					TargetFrame = UI.Main.CornerHolder.Notifications,
					Length = 5.6,
					Buttons = {
						{
							Text = "Close",
							Callback = function() 
								MessageBox.Close(UI.Main.CornerHolder.Notifications,MName) -- MsgName Goes In here too
							end,
						},
					}
				})
			end
		else
			local MName = tostring(math.random(1,100000000))
			MessageBox.Show({
				MessageName = MName, -- required if you add a custom close button to the message
				Title = "Error!",
				Content = "Your Exploit Does Not Support HTTP Requests",
				BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
				TargetFrame = UI.Main.CornerHolder.Notifications,
				Length = 5.6,
				Buttons = {
					{
						Text = "Close",
						Callback = function() 
							MessageBox.Close(UI.Main.CornerHolder.Notifications,MName) -- MsgName Goes In here too
						end,
					},
				}
			})
		end
	end)
	Notice.Inner.Buttons.SetCancel.Leave.MouseButton1Down:Connect(function()
		game.Shutdown()
	end)
	table.insert(WarningBlacklists,Info.id)
end

function CheckForStars()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		local IsStar,Playerinfo = IsStar(v)
		if IsStar then
			StarWarn(Playerinfo)
		end
		--warn(IsStar," : ",Playerinfo)
	end
end

function AddListEntry(Info,BanWarn)
	warn("Add Star To List")
	if table.find(WarningListBlacklists,Info.id) ~= nil then return end
	local Template;-- = script.Template:Clone()
	if BanWarn then
		Template = Assets.TemplateBan:Clone()
	else
		Template = Assets.Template:Clone()
	end
	Template.Age.Content.Text = FormatAge(Info.created).." Day(s)"
	Template.UName.Content.Text = Info.name
	Template.Dispname.Content.Text = Info.displayName
	Template.Icon.Image = game:GetService("Players"):GetUserThumbnailAsync(Info.id,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
	Template.BanNotice.Visible = BanWarn
	Template.Parent = List.Inner.Content.List
	game.Players.PlayerRemoving:Connect(function(P)
		if P.UserId == Info.id then
			warn("Left")
			Template:Destroy()
		end
	end)
	table.insert(WarningListBlacklists,Info.id)
end





CheckForStars()
for i,v in pairs(game.Players:GetPlayers()) do
	local Star,Info = IsStar(v)
	if Star then
		AddListEntry(Info,false)
	end
end
game.Players.PlayerAdded:Connect(function(Player)
	CheckForStars()
	local Star,Info = IsStar(Player)
	if Star then
		AddListEntry(Info,false)
	end
end)

game.Players.PlayerRemoving:Connect(function()
	CheckForStars()
	for i,v in pairs(game.Players:GetPlayers()) do
		local Star,Info = IsStar(v)
		if Star then
			AddListEntry(Info,false)
		end
	end
end)

task.spawn(function()

	while task.wait(Settings.SearchInterval) do
		CheckForStars()
		for i,v in pairs(game.Players:GetPlayers()) do
			local Star,Info = IsStar(v)
			if Star then
				AddListEntry(Info,false)
			end
		end
	end
end)

List.Inner.Buttons.SetCancel.Cancel.MouseButton1Down:Connect(function()
	List.Visible = false
end)
List.Inner.Buttons.SetCancel.SHOP.MouseButton1Down:Connect(function()
	--SHOPMODULE:Teleport(game.PlaceId)
	local PlaceId, JobId = game.PlaceId, game.JobId
	if Request then
		local servers = {}
		local req = Request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)})
		local body = HTTP:JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
		else

			local MName = tostring(math.random(1,100000000))
			MessageBox.Show({
				MessageName = MName, -- required if you add a custom close button to the message
				Title = "Error!",
				Content = "Couldn't Find A Server!",
				BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
				TargetFrame = UI.Main.CornerHolder.Notifications,
				Length = 5.6,
				Buttons = {
					{
						Text = "Close",
						Callback = function() 
							MessageBox.Close(UI.Main.CornerHolder.Notifications,MName) -- MsgName Goes In here too
						end,
					},
				}
			})
		end
	else
		local MName = tostring(math.random(1,100000000))
		MessageBox.Show({
			MessageName = MName, -- required if you add a custom close button to the message
			Title = "Error!",
			Content = "Your Exploit Does Not Support HTTP Requests",
			BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
			TargetFrame = UI.Main.CornerHolder.Notifications,
			Length = 5.6,
			Buttons = {
				{
					Text = "Close",
					Callback = function() 
						MessageBox.Close(UI.Main.CornerHolder.Notifications,MName) -- MsgName Goes In here too
					end,
				},
			}
		})
	end
end)
List.Inner.Buttons.SetCancel.Leave.MouseButton1Down:Connect(function()
	game.Shutdown()
end)
List.Inner.Buttons.SetCancel.Settings.MouseButton1Down:Connect(function()
	SettingsFrame.Visible = true
end)


SettingsFrame.Inner.Buttons.SetCancel.Cancel.MouseButton1Down:Connect(function()
	SettingsFrame.Visible = false
end)

LPLR.Chatted:Connect(function(Msg)
	warn("PlayerChatted, Message: ",Msg)
	if Msg == Settings.ListCommand then
		warn("Showlist")
		List.Visible = true
	end
end)


local MainDropFrame = UI.Main.Settings.Inner.Content.List.SearchMode.DropList

local IsOpen1 = false

MainDropFrame.Collapse.MouseButton1Down:Connect(function()
	if IsOpen1 then
		MainDropFrame.Selection.Visible = false
		MainDropFrame.Collapse.Rotation = 0
		IsOpen1 = false

	elseif not IsOpen1 then
		MainDropFrame.Selection.Visible = true
		MainDropFrame.Collapse.Rotation = 180
		IsOpen1 = true
	end
end)

for i,v in pairs(Settings.MainSettings.SearchOptions) do
	local NewBtn = Assets.DropdownEntry:Clone()
	NewBtn.Label.Text = tostring(v)
	NewBtn.MouseButton1Down:Connect(function()
		MainDropFrame.Label.Text = tostring(v)
		MainDropFrame.Selection.Visible = false
		MainDropFrame.Collapse.Rotation = 0
		IsOpen1 = false
		Settings.MainSettings.CurrentSearchOption = v
	end)
	NewBtn.Parent = MainDropFrame.Selection.Clip.List
end

MainDropFrame.Label.Text = Settings.MainSettings.CurrentSearchOption

local Toggle1 = UI.Main.Settings.Inner.Content.List.FS

local IsToggle1 = Settings.MainSettings.FakeStar


if Settings.MainSettings.FakeStar then
	Toggle1.Click.Label.TextTransparency = 0

elseif not Settings.MainSettings.FakeStar then
	Toggle1.Click.Label.TextTransparency = 1

end

Toggle1.Click.MouseButton1Down:Connect(function()
	if IsToggle1 then
		Toggle1.Click.Label.TextTransparency = 1
		Settings.MainSettings.FakeStar = false
		
		IsToggle1 = false
	elseif not IsToggle1 then
		Toggle1.Click.Label.TextTransparency = 0
		Settings.MainSettings.FakeStar = true
		game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName = "[⭐]"..game.Workspace:FindFirstChild(Players.LocalPlayer.Name):FindFirstChild("Humanoid").DisplayName
		IsToggle1 = true
	end
end)

local Toggle2 = UI.Main.Settings.Inner.Content.List.SS

local IsToggle2 = Settings.MainSettings.HideSelf


if Settings.MainSettings.HideSelf then
	Toggle2.Click.Label.TextTransparency = 0

elseif not Settings.MainSettings.HideSelf then
	Toggle2.Click.Label.TextTransparency = 1

end

Toggle2.Click.MouseButton1Down:Connect(function()
	if IsToggle2 then
		Toggle2.Click.Label.TextTransparency = 1
		Settings.MainSettings.HideSelf = false
		IsToggle2 = false
	elseif not IsToggle1 then
		Toggle2.Click.Label.TextTransparency = 0
		Settings.MainSettings.HideSelf = true
		IsToggle2 = true
	end
end)


List.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor
Notice.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor
SettingsFrame.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor

Notice.Changed:Connect(function(Prop)
	if Notice.Visible then
		UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,0.671, 0)
		UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 442)
	elseif not Notice.Visible then
		UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,1, 0)
		UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 659)
	end
end)


if not RunService:IsStudio() then
	if gethui then
		UI.Parent = gethui()
	elseif syn.protect_gui then 
		syn.protect_gui(UI)
		UI.Parent = CoreGui
	elseif CoreGui:FindFirstChild("RobloxGui") then
		UI.Parent = CoreGui:FindFirstChild("RobloxGui")
	else
		UI.Parent = CoreGui
	end
else
	UI.Parent = game.Players.LocalPlayer.PlayerGui
end

if Notice.Visible then
	UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,0.671, 0)
	UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 442)
elseif not Notice.Visible then
	UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,1, 0)
	UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 659)
end

coroutine.wrap(function()
	


MessageName = tostring(math.random(1,100000000))
MessageBox.Show({
	MessageName = MessageName, -- required if you add a custom close button to the message
	Title = "Success!",
	Content = "Antistar V"..Ver.." - Loaded Successfully!",
	BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
	TargetFrame = UI.Main.CornerHolder.Notifications,
	Length = 5.6,
	Buttons = {
		{
			Text = "Close",
			Callback = function() 
				MessageBox.Close(UI.Main.CornerHolder.Notifications,MessageName) -- MsgName Goes In here too
			end,
		},
	}
})
end)()
coroutine.wrap(function()
MessageName = tostring(math.random(1,100000000))
MessageBox.Show({
	MessageName = MessageName, -- required if you add a custom close button to the message
	Title = "Discord",
	Content = "Would You Like To Join Our Discord (HexHub Softworks)?",
	BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
	TargetFrame = UI.Main.CornerHolder.Notifications,
	Length = 5.6,
	Buttons = {
		{
			Text = "One Click Join",
			Callback = function() 
				--local CurrentDiscordInvite = isfile('Invite.DARKHUB') and readfile('Invite.DARKHUB') or nil
				if Request then
					local Invite = Settings.Invite or "mUdwjdMQ5h"
			--[[local r = Request(
				{
					['Method'] = 'GET',
					['Headers'] = {
						['discordLinkRequest'] = "true"
					},
					['Url'] = 'https://api.darkhub.cloud/v3/discord/raw'
				})
			if r.StatusCode ~= 200 or not r.Successful then
				Invite = "darkhub"
			else
				Invite = r.Body
			end]]--

					Request(
						{
							['Method'] = 'POST',
							['Headers'] = {
								["origin"] = 'https://discord.com',
								["Content-Type"] = "application/json"
							},
							['Url'] = 'http://127.0.0.1:6463/rpc?v=1',
							['Body'] = game:GetService('HttpService'):JSONEncode({cmd="INVITE_BROWSER",args={code=Invite},nonce=game:GetService('HttpService'):GenerateGUID(false):lower()})
						}    
					)

				else
					MessageBox.Show({
						MessageName = "DiscordError", -- required if you add a custom close button to the message
						Title = "Error!",
						Content = "Your Exploit Does Not Support HTTP Requests!",
						BorderColor3 = Themes[Settings.CurrentTheme].BorderColor,
						TargetFrame = UI.Main.CornerHolder.Notifications,
						Length = 5.6,
						Buttons = {
							{
								Text = "Close",
								Callback = function() 
									MessageBox.Close(UI.Main.CornerHolder.Notifications,"DiscordError") -- MsgName Goes In here too
								end,
							},
						}
					})
				end
			end,
		},
		{
			Text = "Copy Link",
			Callback = function() 
				setclipboard("Discord.gg/mUdwjdMQ5h")
			end,
		},
		{
			Text = "Close",
			Callback = function() 
				MessageBox.Close(UI.Main.CornerHolder.Notifications,MessageName) -- MsgName Goes In here too
			end,
		},

	}
})
end)()

