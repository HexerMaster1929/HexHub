
local Request = http_request or syn and syn.request or request or nil
local CurrentDiscordInvite = isfile('DiscordInvite.Hex') and readfile('DiscordInvite.Hex') or nil
local Invite = '6heY8YHS6j'
if not CurrentDiscordInvite or CurrentDiscordInvite ~= Invite then
    if Request then
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
        writefile('DiscordInvite.Hex',Invite)
    end
end

_G.Update1 = "Added Discord AutoJoin"
_G.Update2 = "Key System Temp Removed"
_G.Update3 = "Pushed V3 Update 😈"


loadstring(game:HttpGet("https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/CurrentVersion"))() -- Getting Version

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
		print("Not Supported")
	end

end


local hexhub_loader_v3 = Instance.new("ScreenGui")
hexhub_loader_v3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
hexhub_loader_v3.Name = "HexHubLoaderV3"
hexhub_loader_v3.Parent = game.CoreGui

local holder_frame = Instance.new("Frame")
holder_frame.AnchorPoint = Vector2.new(0.5, 0.5)
holder_frame.BackgroundColor3 = Color3.new(1, 1, 1)
holder_frame.BackgroundTransparency = 1
holder_frame.Position = UDim2.new(0.5, 0, 1.5, 0)
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

local load_button = Instance.new("TextButton")
load_button.Font = Enum.Font.SourceSans
load_button.Text = " "
load_button.TextColor3 = Color3.new(0, 0, 0)
load_button.TextSize = 14
load_button.AnchorPoint = Vector2.new(0.5, 0.5)
load_button.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
load_button.Position = UDim2.new(0.501388907, 0, 0.859937727, 0)
load_button.Size = UDim2.new(0, 282, 0, 40)
load_button.Name = "LoadButton"
load_button.Parent = backing_3

local uistroke_4 = Instance.new("UIStroke")
uistroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_4.Color = Color3.new(1, 1, 1)
uistroke_4.Thickness = 2
uistroke_4.Parent = load_button

local uicorner_4 = Instance.new("UICorner")
uicorner_4.CornerRadius = UDim.new(0.05000000074505806, 15)
uicorner_4.Parent = load_button

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
uigradient.Rotation = 180
uigradient.Parent = load_button

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.FredokaOne
text_label.Text = "Load HexHub"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.AnchorPoint = Vector2.new(0.5, 0.5)
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.Position = UDim2.new(0.5008865, 0, 0.497750103, 0)
text_label.Size = UDim2.new(0, 239, 0, 39)
text_label.Parent = load_button

local main_gradient_3 = Instance.new("UIGradient")
main_gradient_3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
main_gradient_3.Rotation = 90
main_gradient_3.Name = "MainGradient"
main_gradient_3.Parent = loader_main

local title_3 = Instance.new("TextLabel")
title_3.Font = Enum.Font.FredokaOne
title_3.Text = "HexHub V"..tostring(_G.HexHubVer)
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
game_name.Text = game.Name
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
player.Position = UDim2.new(0.111425534, 0, 0.429588914, 0)
player.Size = UDim2.new(0, 209, 0, 72)
player.Name = "Player"
player.Parent = loader_main

local player_icon = Instance.new("ImageLabel")
player_icon.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
player_icon.BackgroundColor3 = Color3.new(1, 1, 1)
player_icon.BackgroundTransparency = 1
player_icon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
player_icon.Position = UDim2.new(0.667519152, 0, 0.429588914, 0)
player_icon.Size = UDim2.new(0, 74, 0, 74)
player_icon.Name = "PlayerIcon"
player_icon.Parent = loader_main

local uistroke_5 = Instance.new("UIStroke")
uistroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke_5.Color = Color3.new(1, 1, 1)
uistroke_5.Thickness = 2
uistroke_5.Parent = player_icon

local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(100, 100)
uicorner_5.Parent = player_icon

function CloseUI()

	holder_frame:TweenPosition(UDim2.new(0.5,0,1.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart)
	wait(1)
	hexhub_loader_v3:Destroy()
end

if not IsSupported() then 
	load_button.BackgroundColor3 = Color3.fromRGB(64, 65, 118)
	text_label.Text = "Not Supported, Close"
	load_button.MouseButton1Down:Connect(function()
		CloseUI()
	end)
end

wait(.5)

holder_frame:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart)

load_button.MouseButton1Down:Connect(function()
	CloseUI()
	LoadHexHubIntoGame()
end)

