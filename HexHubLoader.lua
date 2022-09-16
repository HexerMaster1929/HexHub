

_G.Update1 = "Key System Addition"
_G.Update2 = "Pushed V3 Update 😈"
_G.Update3 = "New Custom UI Library"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/UI/NewUI.lua"))()

local SupportedGamesJSON = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Games/SupportedGames',true))
	local GitHubBase = 'https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Games/'

	local function IsSupported()
		for i,v in pairs(SupportedGamesJSON) do
			if v == game.PlaceId then
				return true    
			end
		end
		return false
	end

function LoadHexHubIntoGame()
if IsSupported() then
			for i,v in pairs(SupportedGamesJSON) do
				if v == game.PlaceId then
					loadstring(game:HttpGet(GitHubBase..i,true))()
					return
				end
			end
		else
		Library:MakeNotification("HexHub","This Game Is Not Supported!","9460077691",5.6)
		end
	
end


local hexhub_loader_v3 = Instance.new("ScreenGui")
hexhub_loader_v3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
hexhub_loader_v3.Name = "HexHubLoaderV3"
hexhub_loader_v3.Parent = game.Players.LocalPlayer.PlayerGui

local holder_frame = Instance.new("Frame")
holder_frame.AnchorPoint = Vector2.new(0.5, 0.5)
holder_frame.BackgroundColor3 = Color3.new(1, 1, 1)
holder_frame.BackgroundTransparency = 1
holder_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
holder_frame.Size = UDim2.new(0, 849, 0, 330)
holder_frame.Name = "HolderFrame"
holder_frame.Parent = hexhub_loader_v3

local update_log = Instance.new("Frame")
update_log.AnchorPoint = Vector2.new(0.5, 0.5)
update_log.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
update_log.Position = UDim2.new(0.14525795, 0, 0.4969697, 0)
update_log.Size = UDim2.new(0, 186, 0, 273)
update_log.Name = "UpdateLog"
update_log.Parent = holder_frame

local main_stroke = Instance.new("UIStroke")
main_stroke.Color = Color3.new(1, 1, 1)
main_stroke.Thickness = 2
main_stroke.Name = "MainStroke"
main_stroke.Parent = update_log

local main_corner = Instance.new("UICorner")
main_corner.CornerRadius = UDim.new(0.05000000074505806, 15)
main_corner.Name = "MainCorner"
main_corner.Parent = update_log

local backing = Instance.new("Frame")
backing.AnchorPoint = Vector2.new(0.5, 0.5)
backing.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
backing.ClipsDescendants = true
backing.Position = UDim2.new(0.497591078, 0, 0.500691831, 0)
backing.Size = UDim2.new(0, 154, 0, 241)
backing.Name = "Backing"
backing.Parent = update_log

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(1, 1, 1)
uistroke.Thickness = 2
uistroke.Parent = backing

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner.Parent = backing

local uipadding = Instance.new("UIPadding")
uipadding.PaddingTop = UDim.new(0.029999999329447746, 0)
uipadding.Parent = backing

local main_gradient = Instance.new("UIGradient")
main_gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
main_gradient.Rotation = 90
main_gradient.Name = "MainGradient"
main_gradient.Parent = update_log

local title = Instance.new("TextLabel")
title.Font = Enum.Font.FredokaOne
title.Text = "Updates:"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.152662545, 0, 0.0816035569, 0)
title.Size = UDim2.new(0, 129, 0, 42)
title.Name = "Title"
title.Parent = update_log

local log1 = Instance.new("TextLabel")
log1.Font = Enum.Font.FredokaOne
log1.Text = _G.Update1
log1.TextColor3 = Color3.new(1, 1, 1)
log1.TextScaled = true
log1.TextSize = 14
log1.TextWrapped = true
log1.BackgroundColor3 = Color3.new(1, 1, 1)
log1.BackgroundTransparency = 1
log1.Position = UDim2.new(0.139819726, 0, 0.268416733, 0)
log1.Size = UDim2.new(0, 133, 0, 44)
log1.Name = "Log1"
log1.Parent = update_log

local log2 = Instance.new("TextLabel")
log2.Font = Enum.Font.FredokaOne
log2.Text = _G.Update2
log2.TextColor3 = Color3.new(1, 1, 1)
log2.TextScaled = true
log2.TextSize = 14
log2.TextWrapped = true
log2.BackgroundColor3 = Color3.new(1, 1, 1)
log2.BackgroundTransparency = 1
log2.Position = UDim2.new(0.139819726, 0, 0.455229938, 0)
log2.Size = UDim2.new(0, 133, 0, 44)
log2.Name = "Log2"
log2.Parent = update_log

local log3 = Instance.new("TextLabel")
log3.Font = Enum.Font.FredokaOne
log3.Text = _G.Update3
log3.TextColor3 = Color3.new(1, 1, 1)
log3.TextScaled = true
log3.TextSize = 14
log3.TextWrapped = true
log3.BackgroundColor3 = Color3.new(1, 1, 1)
log3.BackgroundTransparency = 1
log3.Position = UDim2.new(0.150572419, 0, 0.642043114, 0)
log3.Size = UDim2.new(0, 133, 0, 44)
log3.Name = "Log3"
log3.Parent = update_log

local credit = Instance.new("Frame")
credit.AnchorPoint = Vector2.new(0.5, 0.5)
credit.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
credit.Position = UDim2.new(0.851592004, 0, 0.499274313, 0)
credit.Size = UDim2.new(0, 186, 0, 273)
credit.Name = "Credit"
credit.Parent = holder_frame

local main_stroke_2 = Instance.new("UIStroke")
main_stroke_2.Color = Color3.new(1, 1, 1)
main_stroke_2.Thickness = 2
main_stroke_2.Name = "MainStroke"
main_stroke_2.Parent = credit

local main_corner_2 = Instance.new("UICorner")
main_corner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
main_corner_2.Name = "MainCorner"
main_corner_2.Parent = credit

local backing_2 = Instance.new("Frame")
backing_2.AnchorPoint = Vector2.new(0.5, 0.5)
backing_2.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
backing_2.ClipsDescendants = true
backing_2.Position = UDim2.new(0.497591078, 0, 0.500691831, 0)
backing_2.Size = UDim2.new(0, 154, 0, 241)
backing_2.Name = "Backing"
backing_2.Parent = credit

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Color = Color3.new(1, 1, 1)
uistroke_2.Thickness = 2
uistroke_2.Parent = backing_2

local uicorner_2 = Instance.new("UICorner")
uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_2.Parent = backing_2

local uipadding_2 = Instance.new("UIPadding")
uipadding_2.PaddingTop = UDim.new(0.029999999329447746, 0)
uipadding_2.Parent = backing_2

local main_gradient_2 = Instance.new("UIGradient")
main_gradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
main_gradient_2.Rotation = 90
main_gradient_2.Name = "MainGradient"
main_gradient_2.Parent = credit

local title_2 = Instance.new("TextLabel")
title_2.Font = Enum.Font.FredokaOne
title_2.Text = "Credits"
title_2.TextColor3 = Color3.new(1, 1, 1)
title_2.TextScaled = true
title_2.TextSize = 14
title_2.TextWrapped = true
title_2.BackgroundColor3 = Color3.new(1, 1, 1)
title_2.BackgroundTransparency = 1
title_2.Position = UDim2.new(0.152662545, 0, 0.0816035569, 0)
title_2.Size = UDim2.new(0, 129, 0, 42)
title_2.Name = "Title"
title_2.Parent = credit

local creator1 = Instance.new("TextLabel")
creator1.Font = Enum.Font.FredokaOne
creator1.Text = "MissSavannah: UI Design"
creator1.TextColor3 = Color3.new(1, 1, 1)
creator1.TextScaled = true
creator1.TextSize = 14
creator1.TextWrapped = true
creator1.BackgroundColor3 = Color3.new(1, 1, 1)
creator1.BackgroundTransparency = 1
creator1.Position = UDim2.new(0.112938009, 0, 0.268416733, 0)
creator1.Size = UDim2.new(0, 141, 0, 51)
creator1.Name = "Creator1"
creator1.Parent = credit

local creator2 = Instance.new("TextLabel")
creator2.Font = Enum.Font.FredokaOne
creator2.Text = "HexerMaster1929: Exploit Design"
creator2.TextColor3 = Color3.new(1, 1, 1)
creator2.TextScaled = true
creator2.TextSize = 14
creator2.TextWrapped = true
creator2.BackgroundColor3 = Color3.new(1, 1, 1)
creator2.BackgroundTransparency = 1
creator2.Position = UDim2.new(0.112938009, 0, 0.486679465, 0)
creator2.Size = UDim2.new(0, 141, 0, 51)
creator2.Name = "Creator2"
creator2.Parent = credit

local creator3 = Instance.new("TextLabel")
creator3.Font = Enum.Font.FredokaOne
creator3.Text = "MrolivesGaming: Scripting"
creator3.TextColor3 = Color3.new(1, 1, 1)
creator3.TextScaled = true
creator3.TextSize = 14
creator3.TextWrapped = true
creator3.BackgroundColor3 = Color3.new(1, 1, 1)
creator3.BackgroundTransparency = 1
creator3.Position = UDim2.new(0.124371283, 0, 0.704942286, 0)
creator3.Size = UDim2.new(0, 141, 0, 51)
creator3.Name = "Creator3"
creator3.Parent = credit

local loader_main = Instance.new("Frame")
loader_main.AnchorPoint = Vector2.new(0.5, 0.5)
loader_main.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
loader_main.Position = UDim2.new(0.499364078, 0, 0.499274313, 0)
loader_main.Size = UDim2.new(0, 391, 0, 273)
loader_main.Name = "LoaderMain"
loader_main.Parent = holder_frame

local main_stroke_3 = Instance.new("UIStroke")
main_stroke_3.Color = Color3.new(1, 1, 1)
main_stroke_3.Thickness = 2
main_stroke_3.Name = "MainStroke"
main_stroke_3.Parent = loader_main

local main_corner_3 = Instance.new("UICorner")
main_corner_3.CornerRadius = UDim.new(0.05000000074505806, 15)
main_corner_3.Name = "MainCorner"
main_corner_3.Parent = loader_main

local backing_3 = Instance.new("Frame")
backing_3.AnchorPoint = Vector2.new(0.5, 0.5)
backing_3.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
backing_3.ClipsDescendants = true
backing_3.Position = UDim2.new(0.498433381, 0, 0.500691831, 0)
backing_3.Size = UDim2.new(0, 360, 0, 241)
backing_3.Name = "Backing"
backing_3.Parent = loader_main

local uistroke_3 = Instance.new("UIStroke")
uistroke_3.Color = Color3.new(1, 1, 1)
uistroke_3.Thickness = 2
uistroke_3.Parent = backing_3

local uicorner_3 = Instance.new("UICorner")
uicorner_3.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_3.Parent = backing_3

local uipadding_3 = Instance.new("UIPadding")
uipadding_3.PaddingTop = UDim.new(0.029999999329447746, 0)
uipadding_3.Parent = backing_3

local get_key = Instance.new("TextButton")
get_key.Font = Enum.Font.SourceSans
get_key.Text = " "
get_key.TextColor3 = Color3.new(0, 0, 0)
get_key.TextSize = 14
get_key.AnchorPoint = Vector2.new(0.5, 0.5)
get_key.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
get_key.Position = UDim2.new(0.504166663, 0, 0.859937608, 0)
get_key.Size = UDim2.new(0, 282, 0, 38)
get_key.Name = "GetKey"
get_key.Parent = backing_3

local uistroke_4 = Instance.new("UIStroke")
uistroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_4.Color = Color3.new(1, 1, 1)
uistroke_4.Thickness = 2
uistroke_4.Parent = get_key

local uicorner_4 = Instance.new("UICorner")
uicorner_4.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_4.Parent = get_key

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
uigradient.Rotation = 180
uigradient.Parent = get_key

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.FredokaOne
text_label.Text = "Get Key"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.AnchorPoint = Vector2.new(0.5, 0.5)
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.Position = UDim2.new(0.5008865, 0, 0.497750103, 0)
text_label.Size = UDim2.new(0, 239, 0, 39)
text_label.Parent = get_key

local key_box = Instance.new("TextBox")
key_box.CursorPosition = -1
key_box.Font = Enum.Font.FredokaOne
key_box.PlaceholderColor3 = Color3.new(0.772549, 0.772549, 0.772549)
key_box.PlaceholderText = "Key"
key_box.Text = ""
key_box.TextColor3 = Color3.new(1, 1, 1)
key_box.TextSize = 30
key_box.TextWrapped = true
key_box.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
key_box.Position = UDim2.new(0.112499997, 0, 0.588723481, 0)
key_box.Size = UDim2.new(0, 199, 0, 37)
key_box.Name = "KeyBox"
key_box.Parent = backing_3

local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_5.Parent = key_box

local uistroke_5 = Instance.new("UIStroke")
uistroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_5.Color = Color3.new(1, 1, 1)
uistroke_5.Thickness = 2
uistroke_5.Parent = key_box

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.407843, 0.407843, 0.407843))})
uigradient_2.Rotation = 180
uigradient_2.Parent = key_box

local send_button = Instance.new("TextButton")
send_button.Font = Enum.Font.SourceSans
send_button.Text = " "
send_button.TextColor3 = Color3.new(0, 0, 0)
send_button.TextSize = 14
send_button.AnchorPoint = Vector2.new(0.5, 0.5)
send_button.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
send_button.Position = UDim2.new(0.792611003, 0, 0.669999897, 0)
send_button.Size = UDim2.new(0, 71, 0, 38)
send_button.Name = "SendButton"
send_button.Parent = backing_3

local button_image = Instance.new("ImageLabel")
button_image.Image = "rbxassetid://10922232039"
button_image.AnchorPoint = Vector2.new(0.5, 0.5)
button_image.BackgroundColor3 = Color3.new(1, 1, 1)
button_image.BackgroundTransparency = 1
button_image.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
button_image.Position = UDim2.new(0.540651977, 0, 0.5, 0)
button_image.Size = UDim2.new(0, 26, 0, 34)
button_image.Name = "ButtonImage"
button_image.Parent = send_button

local uigradient_3 = Instance.new("UIGradient")
uigradient_3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
uigradient_3.Rotation = 180
uigradient_3.Parent = send_button

local uicorner_6 = Instance.new("UICorner")
uicorner_6.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_6.Parent = send_button

local send_button_uistroke = Instance.new("UIStroke")
send_button_uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
send_button_uistroke.Color = Color3.new(1, 1, 1)
send_button_uistroke.Thickness = 2
send_button_uistroke.Name = "SendButtonUiStroke"
send_button_uistroke.Parent = send_button

local main_gradient_3 = Instance.new("UIGradient")
main_gradient_3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
main_gradient_3.Rotation = 90
main_gradient_3.Name = "MainGradient"
main_gradient_3.Parent = loader_main

local title_3 = Instance.new("TextLabel")
title_3.Font = Enum.Font.FredokaOne
title_3.Text = "HexHub V3 Beta"
title_3.TextColor3 = Color3.new(1, 1, 1)
title_3.TextScaled = true
title_3.TextSize = 14
title_3.TextWrapped = true
title_3.BackgroundColor3 = Color3.new(1, 1, 1)
title_3.BackgroundTransparency = 1
title_3.Position = UDim2.new(0.09352272, 0, 0.114570588, 0)
title_3.Size = UDim2.new(0, 316, 0, 42)
title_3.Name = "Title"
title_3.Parent = loader_main

local game_name = Instance.new("TextLabel")
game_name.Font = Enum.Font.FredokaOne
game_name.Text = tostring(game.Name)
game_name.TextColor3 = Color3.new(1, 1, 1)
game_name.TextScaled = true
game_name.TextSize = 14
game_name.TextWrapped = true
game_name.BackgroundColor3 = Color3.new(1, 1, 1)
game_name.BackgroundTransparency = 1
game_name.Position = UDim2.new(0.0960802659, 0, 0.268416733, 0)
game_name.Size = UDim2.new(0, 316, 0, 25)
game_name.Name = "GameName"
game_name.Parent = loader_main

local player = Instance.new("TextLabel")
player.Font = Enum.Font.FredokaOne
player.Text = "Welcome, "..tostring(game.Players.LocalPlayer.Name)
player.TextColor3 = Color3.new(1, 1, 1)
player.TextScaled = true
player.TextSize = 14
player.TextWrapped = true
player.BackgroundColor3 = Color3.new(1, 1, 1)
player.BackgroundTransparency = 1
player.Position = UDim2.new(0.14211607, 0, 0.381969869, 0)
player.Size = UDim2.new(0, 209, 0, 50)
player.Name = "Player"
player.Parent = loader_main

local player_icon = Instance.new("ImageLabel")
player_icon.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size60x60)
player_icon.BackgroundColor3 = Color3.new(1, 1, 1)
player_icon.BackgroundTransparency = 1
player_icon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
player_icon.Position = UDim2.new(0.726342678, 0, 0.381969869, 0)
player_icon.Size = UDim2.new(0, 50, 0, 50)
player_icon.Name = "PlayerIcon"
player_icon.Parent = loader_main

local uistroke_6 = Instance.new("UIStroke")
uistroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_6.Color = Color3.new(1, 1, 1)
uistroke_6.Thickness = 2
uistroke_6.Parent = player_icon

local uicorner_7 = Instance.new("UICorner")
uicorner_7.CornerRadius = UDim.new(100, 100)
uicorner_7.Parent = player_icon

function CloseUI()
	
	holder_frame:TweenPosition(UDim2.new(0.5,0,1.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart)
	wait(1)
	hexhub_loader_v3:Destroy()
end

if not IsSupported() then 
	get_key.BackgroundColor3 = Color3.fromRGB(64, 65, 118)
	text_label.Text = "Not Supported, Close"
	get_key.MouseButton1Down:Connect(function()
		CloseUI()
	end)
end

wait(.5)

holder_frame:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart)

local HexHubCurrentKey = "H6Gtvh87H8h3nnJ6NukJ998J1Hyh165GbBBncF47B773G6cf3"

local AdministratorKeys = "HexerLikesPenisAdminCode1","OliverIsVerySexiScripter1","SavannahLikesToRideDicksLolAdminCode2"

if AdminKey and IsSupported() then
 if AdminKey == AdministratorKeys then
     Library:MakeNotification("HexHub","Admin Key Override Used, Loading hexHub.","9460077691",5.6)
     CloseUI()
		LoadHexHubIntoGame()
else
 Library:MakeNotification("HexHub","Invalid Admin Key...","9460077691",5.6)
			
 end
		end

send_button.MouseButton1Down:Connect(function()
	if IsSupported() then
	if key_box.Text == HexHubCurrentKey then
		send_button_uistroke.Color = Color3.new(0.333333, 1, 0)
		wait(.5)
		CloseUI()
		LoadHexHubIntoGame()
	elseif key_box.Text ~= HexHubCurrentKey then
		send_button_uistroke.Color = Color3.new(1, 0, 0)
		wait(1)
		send_button_uistroke.Color = Color3.new(1, 1, 1)
	end
	end
end)

get_key.MouseButton1Down:Connect(function()
	setclipboard("https://work.ink/2jM/HexHubCheckPoint1")  
	Library:MakeNotification("HexHub","Copied Key System Link To Clipboard","9460077691",5.6)
end)

-- H6Gtvh87H8h3nnJ6NukJ998J1Hyh165GbBBncF47B773G6cf3
