
local MSG = {
	--[[Buttons = {
		{
			Title = "Fuck",
			Callback = function() end
		}
	}]]--
}

local Assets = game:GetObjects("rbxassetid://12923461037")[1].Assets or script.Parent.Assets

function MSG.Show(InfoTable)
	warn("Message Show")
local AddedButtons = 0
	local MessageBox = Assets.Notification:Clone()
	MessageBox.Name = InfoTable.MessageName
	MessageBox.Title.Text = InfoTable.Title
	MessageBox.Content.Text = InfoTable.Content
	
	for i,v in pairs(InfoTable.Buttons) do
		if AddedButtons > 3 or AddedButtons == 3 then 
			warn("Maximum 3 Message Buttons!")
			return
		end
		local NewBTN = Assets.NotificationButton:Clone()
		NewBTN.Label.Text = v.Text
		NewBTN.MouseButton1Down:Connect(function()
			MessageBox:Destroy()
			v.Callback()
		end)
		NewBTN.Parent = MessageBox.Inner.Buttons.AddedButtons
	end
	MessageBox.Parent = InfoTable.TargetFrame
	MessageBox.Border.ImageColor3 = InfoTable.BorderColor3
	warn(MessageBox.Parent)

	--[[local MSGFUNC = {}
	function MSGFUNC.Close()
		MessageBox:Destroy()
	end
	return MSGFUNC]]
	wait(InfoTable.Length)
	MessageBox:Destroy()
	
end

function MSG.Close(TargetFrame,MessageName)
	TargetFrame:FindFirstChild(MessageName):Destroy()
end

return MSG
