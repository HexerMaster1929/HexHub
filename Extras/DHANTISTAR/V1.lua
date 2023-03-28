wait(5)

local Success,Error = pcall(function()

	local StarJoinWarning = "Star Joined!"

	local screen_gui = Instance.new("ScreenGui")
	screen_gui.IgnoreGuiInset = false
	screen_gui.ResetOnSpawn = false
	screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screen_gui.Parent = game.Players.LocalPlayer.PlayerGui

	local screen_gui2 = Instance.new("ScreenGui")
	screen_gui2.IgnoreGuiInset = false
	screen_gui2.ResetOnSpawn = false
	screen_gui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screen_gui2.Parent = game.Players.LocalPlayer.PlayerGui

	local frame = Instance.new("Frame")
	frame.Style = Enum.FrameStyle.DropShadow
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.Size = UDim2.new(0, 369, 0, 247)
	frame.Visible = false
	frame.Parent = screen_gui

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Unknown
	text_label.Text = "WARNING"
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextSize = 33
	text_label.AnchorPoint = Vector2.new(0.5, 0.5)
	text_label.BackgroundColor3 = Color3.new(1, 0.870588, 0.47451)
	text_label.Position = UDim2.new(0.5, 0, 0.112000003, 0)
	text_label.Size = UDim2.new(0, 404, 0, 33)
	text_label.Visible = true
	text_label.Parent = frame

	local uistroke = Instance.new("UIStroke")
	uistroke.Parent = text_label

	local uistroke_2 = Instance.new("UIStroke")
	uistroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke_2.Color = Color3.new(1, 0, 0)
	uistroke_2.Thickness = 6
	uistroke_2.Parent = text_label

	local text_label_2 = Instance.new("TextLabel")
	text_label_2.Font = Enum.Font.Unknown
	text_label_2.Text = "A STAR HAS JOINED THIS SERVER."
	text_label_2.TextColor3 = Color3.new(1, 1, 1)
	text_label_2.TextSize = 25
	text_label_2.AnchorPoint = Vector2.new(0.5, 0.5)
	text_label_2.BackgroundColor3 = Color3.new(1, 1, 0.498039)
	text_label_2.BackgroundTransparency = 1
	text_label_2.Position = UDim2.new(0.5, 0, 0.398000002, 0)
	text_label_2.Size = UDim2.new(0, 338, 0, 41)
	text_label_2.Visible = true
	text_label_2.Parent = frame

	local uistroke_3 = Instance.new("UIStroke")
	uistroke_3.Parent = text_label_2

	local text_label_3 = Instance.new("TextLabel")
	text_label_3.Font = Enum.Font.Unknown
	text_label_3.Text = "You will soon be teleported to another server."
	text_label_3.TextColor3 = Color3.new(1, 1, 1)
	text_label_3.TextSize = 16
	text_label_3.TextXAlignment = Enum.TextXAlignment.Left
	text_label_3.TextYAlignment = Enum.TextYAlignment.Top
	text_label_3.AnchorPoint = Vector2.new(0.5, 0.5)
	text_label_3.BackgroundColor3 = Color3.new(1, 1, 0.498039)
	text_label_3.BackgroundTransparency = 1
	text_label_3.Position = UDim2.new(0.5, 0, 0.708000004, 0)
	text_label_3.Size = UDim2.new(0, 316, 0, 104)
	text_label_3.Visible = true
	text_label_3.Parent = frame

	local notif = Instance.new("Frame")
	notif.Style = Enum.FrameStyle.DropShadow
	notif.AnchorPoint = Vector2.new(1, 1)
	notif.BackgroundColor3 = Color3.new(1, 1, 1)
	notif.Position = UDim2.new(1, 0, 1, 0)
	notif.Size = UDim2.new(0, 259, 0, 131)
	notif.Visible = false
	notif.Name = "Notif"
	notif.Parent = screen_gui2

	local titl = Instance.new("TextLabel")
	titl.Font = Enum.Font.Unknown
	titl.Text = "NOTIFICATION"
	titl.TextColor3 = Color3.new(1, 1, 1)
	titl.TextSize = 33
	titl.AnchorPoint = Vector2.new(0.5, 0.5)
	titl.BackgroundColor3 = Color3.new(1, 0.870588, 0.47451)
	titl.Position = UDim2.new(0.511582971, 0, 0.096870251, 0)
	titl.Size = UDim2.new(0, 260, 0, 37)
	titl.Visible = true
	titl.Name = "Titl"
	titl.Parent = notif

	local uistroke = Instance.new("UIStroke")
	uistroke.Parent = titl

	local uistroke_2 = Instance.new("UIStroke")
	uistroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke_2.Color = Color3.new(0.333333, 1, 0)
	uistroke_2.Thickness = 6
	uistroke_2.Parent = titl

	local cont = Instance.new("TextLabel")
	cont.Font = Enum.Font.Unknown
	cont.Text = "SUCCESS"
	cont.TextColor3 = Color3.new(1, 1, 1)
	cont.TextSize = 25
	cont.AnchorPoint = Vector2.new(0.5, 0.5)
	cont.BackgroundColor3 = Color3.new(1, 1, 0.498039)
	cont.BackgroundTransparency = 1
	cont.Position = UDim2.new(0.517125666, 0, 0.497321457, 0)
	cont.Size = UDim2.new(0, 202, 0, 27)
	cont.Visible = true
	cont.Name = "cont"
	cont.Parent = notif

	local uistroke_3 = Instance.new("UIStroke")
	uistroke_3.Parent = cont

	local info = Instance.new("TextLabel")
	info.Font = Enum.Font.Unknown
	info.Text = "You Will Be Automatically Server Hopped When A Star User Joins"
	info.TextColor3 = Color3.new(1, 1, 1)
	info.TextScaled = true
	info.TextSize = 16
	info.TextWrapped = true
	info.AnchorPoint = Vector2.new(0.5, 0.5)
	info.BackgroundColor3 = Color3.new(1, 1, 0.498039)
	info.BackgroundTransparency = 1
	info.Position = UDim2.new(0.508059442, 0, 0.813926697, 0)
	info.Size = UDim2.new(0, 204, 0, 35)
	info.Visible = true
	info.Name = "Info"
	info.Parent = notif

	local uistroke_4 = Instance.new("UIStroke")
	uistroke_4.Parent = info

	--game:GetService("TeleportService"):SetTeleportGui(screen_gui)	

	local uistroke_4 = Instance.new("UIStroke")
	uistroke_4.Parent = text_label_3

	local function CheckForStars()
		for i,v in pairs(game.Players:GetChildren()) do
			local HUM = v.Character:WaitForChild("Humanoid")
			local DName = HUM.DisplayName
			if string.match(DName,"⭐") or string.match(DName,"🌟") then
				--screen_gui.Enabled = true
				frame.Visible = true
				wait(3)
				--game.Players.LocalPlayer:Kick(StarJoinWarning or "USER BANNED")
			--	game:GetService("TeleportService"):TeleportAsync(game.PlaceId,{game.Players.LocalPlayer,"MrolivesGaming"})
				--game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
				
				local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

module:Teleport(game.PlaceId)

			end
		end
	end


	CheckForStars()

	game.Players.PlayerAdded:Connect(function()
		CheckForStars()
	end)

	game.Players.PlayerRemoving:Connect(function()
		CheckForStars()
	end)
	
	task.spawn(function()

	while task.wait(2) do
		CheckForStars()
	end
end)
	--loadstring(game:HttpGet("https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/UI/Notification%20(Public%20For%20Exploit%20Makers).lua"))()

	--HexNotification("Star Warning","Star Warning Loaded!","6366788549","9067086414")

	notif.Visible = true
	wait(7)
	notif:Destroy()

end)

if Error then
	print(Error)
elseif Success then
	print(Success)
end
