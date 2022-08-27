-- New Loader Yass Queen

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Header = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local LoadingText = Instance.new("TextLabel")
local PlayerName = Instance.new("TextLabel")
local GameName = Instance.new("TextLabel")





ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.499622911, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 344, 0, 117)

UICorner.CornerRadius = UDim.new(0.0199999996, 12)
UICorner.Parent = MainFrame

Header.Name = "Header"
Header.Parent = MainFrame
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
Header.Position = UDim2.new(0.195843711, 0, 0.222222224, 0)
Header.Size = UDim2.new(0, 135, 0, 52)

UICorner_2.CornerRadius = UDim.new(0.0199999996, 12)
UICorner_2.Parent = Header

Frame.Parent = Header
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
Frame.Position = UDim2.new(0.90873754, 0, 0.504629254, 0)
Frame.Size = UDim2.new(0, 54, 0, 52)

UICorner_3.CornerRadius = UDim.new(100, 100)
UICorner_3.Parent = Frame

Frame_2.Parent = Header
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.196486637, 0, 0.76780647, 0)
Frame_2.Size = UDim2.new(0, 54, 0, 24)

Frame_3.Parent = Header
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.90731293, 0, 0.265669614, 0)
Frame_3.Size = UDim2.new(0, 54, 0, 28)

TextLabel.Parent = Header
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0296296291, 0, 0.00462928182, 0)
TextLabel.Size = UDim2.new(0, 145, 0, 51)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "HexHub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 38.000
TextLabel.TextWrapped = true

LoadingText.Name = "LoadingText"
LoadingText.Parent = MainFrame
LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.BackgroundTransparency = 1.000
LoadingText.Position = UDim2.new(0.484797627, 0, 0.545425832, 0)
LoadingText.Size = UDim2.new(0, 163, 0, 31)
LoadingText.Font = Enum.Font.FredokaOne
LoadingText.Text = "Loading"
LoadingText.TextColor3 = Color3.fromRGB(170, 170, 255)
LoadingText.TextScaled = true
LoadingText.TextSize = 38.000
LoadingText.TextWrapped = true

PlayerName.Name = "PlayerName"
PlayerName.Parent = MainFrame
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.Position = UDim2.new(0.484797627, 0, 0.0326052941, 0)
PlayerName.Size = UDim2.new(0, 163, 0, 60)
PlayerName.Font = Enum.Font.FredokaOne
PlayerName.Text = "Welcome, " ..tostring(game.Players.LocalPlayer.Name)
PlayerName.TextColor3 = Color3.fromRGB(170, 170, 255)
PlayerName.TextScaled = true
PlayerName.TextSize = 38.000
PlayerName.TextWrapped = true

GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.Position = UDim2.new(0.0516580977, 0, 0.545425832, 0)
GameName.Size = UDim2.new(0, 124, 0, 40)
GameName.Font = Enum.Font.FredokaOne
GameName.Text = game.Name
GameName.TextColor3 = Color3.fromRGB(170, 170, 255)
GameName.TextScaled = true
GameName.TextSize = 38.000
GameName.TextWrapped = true



wait(5)


for i,p in pairs(MainFrame:GetChildren()) do
	if p:IsA("TextLabel") or p:IsA("ImageLabel") or p:IsA("Frame") or p:IsA("TextBox") or p:IsA("TextButton") then
		p:TweenSize(UDim2.new(0, 0, 0, 0),nil,Enum.EasingStyle.Quint)
		wait(.5)
		
	p.Visible = false
		end
end

MainFrame:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quart)
wait(.5)
ScreenGui:Destroy()

-------------------------------------------------------------------------------

-- Actual Loader By HexHub 😈

local SupportedGamesJSON = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Games/SupportedGames',true))
local GitHubBase = 'https://raw.githubusercontent.com/HexerMaster1929/HexHub/main/Games/'

function IsSupported()
    for i,v in pairs(SupportedGamesJSON) do
        if v == game.GameId then
            return true    
        end
    end
    return false
end

task.spawn(function()
    if IsSupported() then
        for i,v in pairs(SupportedGamesJSON) do
            if v == game.GameId then
                loadstring(game:HttpGet(GitHubBase..i,true))()
                return
            end
        end
    else
       -- Notification when im not lazy
    end
end)
