local UI = game:GetObjects("rbxassetid://12923461037")[1] or script.Parent
local Notice = UI.Main.CornerHolder.StarNotice
local List = UI.Main.StarList
local SettingsFrame = UI.Main.Settings
local LPLR = game.Players.LocalPlayer
local Assets = UI.Assets
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Extras/DHANTISTAR/HexMes_Messagebox.lua"))
local MessageName;

local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local Themes = {
	Default = {
		BorderColor = Color3.fromRGB(28, 28, 255)
	}
}



local SHOPMODULE = loadstring(game:HttpGet"https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Extras/DHANTISTAR/ServerHop.lua")()

Settings = {
	SearchInterval = 3, -- interval between automatically searching for stars in server (in seconds)
	ListCommand = "/e sl", -- command to open the star list
	Debug = false, -- will trigger star warning for all players / more
	CurrentTheme = "Default" -- {"Default"}
}

Star = "⭐" or "U+2B50"
StarTable = {}
local WarningBlacklists = {}

local HTTP = game:GetService("HttpService")

function GetInfo(Plr)
	local InfoAPI = "https://users.roproxy.com/v1/users/"..tostring(Plr.UserId)
	local Data;
	local Success,Fail = pcall(function()
		Data = HTTP:GetAsync(InfoAPI)
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

function IsStar(Player)
	local Char = game.Workspace:FindFirstChild(tostring(Player)) or Player.Character
	local Humanoid = Char:FindFirstChildOfClass("Humanoid")
	if string.match(tostring(Humanoid.DisplayName),Star) then
		warn("Star Found")
		return true, GetInfo(Player)
	else
		if game:GetService("RunService"):IsStudio() or Settings.Debug then
			return true, GetInfo(Player)
		else
			return false
		end
	end
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
		SHOPMODULE:Teleport(game.PlaceId)
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
	if table.find(WarningBlacklists,Info.id) ~= nil then return end
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
	Template.Parent = List.Inner.Content.List
	game.Players.PlayerRemoving:Connect(function(P)
		if P.UserId == Info.id then
			warn("Left")
			Template:Destroy()
		end
	end)
	table.insert(WarningBlacklists,Info.id)
end

task.spawn(function()

while task.wait(1) do
	CheckForStars()
	for i,v in pairs(game.Players:GetPlayers()) do
	local Star,Info = IsStar(v)
	if Star then
		AddListEntry(Info,false)
		end
		end
end
	end)
	
game.Players.PlayerAdded:Connect(function(Player)
	CheckForStars()
	local Star,Info = IsStar(Player)
	if Star then
		AddListEntry(Info,false)
	end
	
end)

List.Inner.Buttons.SetCancel.Cancel.MouseButton1Down:Connect(function()
	List.Visible = false
end)
List.Inner.Buttons.SetCancel.SHOP.MouseButton1Down:Connect(function()
	SHOPMODULE:Teleport(game.PlaceId)
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

List.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor
Notice.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor
--Settings.Border.ImageColor3 = Themes[Settings.CurrentTheme].BorderColor

Notice.Changed:Connect(function(Prop)
	if Notice.Visible then
		UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,0.671, 0)
		UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 442)
	elseif not Notice.Visible then
		UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,1, 0)
		UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 659)
	end
end)


MessageName = tostring(math.random(1,100000000))
MessageBox.Show({
	MessageName = MessageName, -- required if you add a custom close button to the message
	Title = "Success!",
	Content = "Antistar V2.0A - Loaded Successfully!",
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
				local Request = http_request or syn and syn.request or request or nil
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


if Notice.Visible then
	UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,0.671, 0)
	UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 442)
elseif not Notice.Visible then
	UI.Main.CornerHolder.Notifications.Position = UDim2.new(1, 0,1, 0)
	UI.Main.CornerHolder.Notifications.Size = UDim2.new(0, 331,0, 659)
end

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
