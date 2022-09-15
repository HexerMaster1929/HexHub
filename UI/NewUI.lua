local Lib = {}

local uiclicksfx = Instance.new("Sound")
		uiclicksfx.PlaybackSpeed = 1.75
		uiclicksfx.RollOffMaxDistance = 24
		uiclicksfx.SoundId = "rbxassetid://144130810"
		uiclicksfx.Name = "UICLICKSFX"
		uiclicksfx.Parent = workspace

		local tremolo_effect = Instance.new("TremoloSoundEffect")
		tremolo_effect.Name = "TremoloEffect"
		tremolo_effect.Parent = uiclicksfx
		
		ButtonAudioToggle = true

function ButtonSFX()
	if ButtonAudioToggle then
	uiclicksfx:Play()
end
end

function Lib.CreateWindow(WindowName)
	
	local hexhub_v3 = Instance.new("ScreenGui")
	hexhub_v3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	hexhub_v3.Name = tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100))
	hexhub_v3.Parent = game.CoreGui

	local hexhub_frame = Instance.new("Frame")
	hexhub_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	hexhub_frame.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	hexhub_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	hexhub_frame.Size = UDim2.new(0, 631, 0, 378)
	hexhub_frame.Name = "HexHubFrame"
	hexhub_frame.Parent = hexhub_v3
	
	local settings_frame = Instance.new("Frame")
	settings_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	settings_frame.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	settings_frame.Position = UDim2.new(0.500638485, 0, 0.539153397, 0)
	settings_frame.Size = UDim2.new(0, 596, 0, 324)
	settings_frame.Name = "SettingsFrame"
	settings_frame.Parent = hexhub_frame
	settings_frame.Visible = false
	
	local click_sounds = Instance.new("Frame")
	click_sounds.AnchorPoint = Vector2.new(0.5, 0.5)
	click_sounds.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	click_sounds.Position = UDim2.new(0.267151892, 0, 0.434490085, 0)
	click_sounds.Size = UDim2.new(0, 260, 0, 46)
	click_sounds.Name = "ClickSounds"
	click_sounds.Parent = settings_frame

	local uistroke = Instance.new("UIStroke")
	uistroke.Color = Color3.new(1, 1, 1)
	uistroke.Thickness = 2
	uistroke.Parent = click_sounds

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner.Parent = click_sounds

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Gotham
	text_label.Text = "Click Sounds"
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.TextXAlignment = Enum.TextXAlignment.Left
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.Position = UDim2.new(0.0426113419, 0, 0.191978127, 0)
	text_label.Size = UDim2.new(0, 146, 0, 28)
	text_label.Parent = click_sounds

	local click_sounds_toggle_button = Instance.new("Frame")
	click_sounds_toggle_button.AnchorPoint = Vector2.new(0.5, 0.5)
	click_sounds_toggle_button.BackgroundColor3 = Color3.new(1, 1, 1)
	click_sounds_toggle_button.Position = UDim2.new(0.792438686, 0, 0.488685936, 0)
	click_sounds_toggle_button.Size = UDim2.new(0, 69, 0, 28)
	click_sounds_toggle_button.Name = "ClickSoundsToggleButton"
	click_sounds_toggle_button.Parent = click_sounds

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_2.Parent = click_sounds_toggle_button

	local sounds_toggle_clickable = Instance.new("Frame")
	sounds_toggle_clickable.AnchorPoint = Vector2.new(0.5, 0.5)
	sounds_toggle_clickable.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	sounds_toggle_clickable.Position = UDim2.new(0.917221546, 0, 0.496753126, 0)
	sounds_toggle_clickable.Size = UDim2.new(0, 31, 0, 31)
	sounds_toggle_clickable.Name = "SoundsToggleClickable"
	sounds_toggle_clickable.Parent = click_sounds_toggle_button

	local uicorner_69 = Instance.new("UICorner")
	uicorner_69.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_69.Parent = sounds_toggle_clickable

	local uistroke_69 = Instance.new("UIStroke")
	uistroke_69.Color = Color3.new(1, 1, 1)
	uistroke_69.Thickness = 2
	uistroke_69.Parent = sounds_toggle_clickable

	local mark_beats_has_aids = Instance.new("TextButton")
	mark_beats_has_aids.Font = Enum.Font.SourceSans
	mark_beats_has_aids.Text = ""
	mark_beats_has_aids.TextColor3 = Color3.new(0, 0, 0)
	mark_beats_has_aids.TextSize = 14
	mark_beats_has_aids.BackgroundColor3 = Color3.new(1, 1, 1)
	mark_beats_has_aids.BackgroundTransparency = 1
	mark_beats_has_aids.Position = UDim2.new(0.00466883183, 0, 0.0588235296, 0)
	mark_beats_has_aids.Size = UDim2.new(0, 33, 0, 30)
	mark_beats_has_aids.Name = "MarkBeatsHasAids"
	mark_beats_has_aids.Parent = sounds_toggle_clickable
	
	
	
	mark_beats_has_aids.MouseButton1Down:Connect(function()
		if ButtonAudioToggle then
			ButtonAudioToggle = false
			sounds_toggle_clickable:TweenPosition(UDim2.new(0.236, 0,0.497, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint,.15) 
		elseif not ButtonAudioToggle then
			ButtonAudioToggle = true
			sounds_toggle_clickable:TweenPosition(UDim2.new(0.917, 0,0.497, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint,.15) 
		end
	end)
	
	local main_stroke = Instance.new("UIStroke")
	main_stroke.Color = Color3.new(1, 1, 1)
	main_stroke.Thickness = 2
	main_stroke.Name = "MainStroke"
	main_stroke.Parent = hexhub_frame

	local main_corner = Instance.new("UICorner")
	main_corner.CornerRadius = UDim.new(0.05000000074505806, 15)
	main_corner.Name = "MainCorner"
	main_corner.Parent = hexhub_frame

	local main_frame = Instance.new("Frame")
	main_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	main_frame.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	main_frame.Position = UDim2.new(0.625072718, 0, 0.539153457, 0)
	main_frame.Size = UDim2.new(0, 439, 0, 324)
	main_frame.Name = "MainFrame"
	main_frame.Parent = hexhub_frame

	local uistroke = Instance.new("UIStroke")
	uistroke.Color = Color3.new(1, 1, 1)
	uistroke.Thickness = 2
	uistroke.Parent = main_frame

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner.Parent = main_frame

	local buttons = Instance.new("Frame")
	buttons.AnchorPoint = Vector2.new(0.5, 0.5)
	buttons.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	buttons.ClipsDescendants = true
	buttons.Position = UDim2.new(0.141655833, 0, 0.539153397, 0)
	buttons.Size = UDim2.new(0, 143, 0, 324)
	buttons.Name = "Buttons"
	buttons.Parent = hexhub_frame

	local uistroke_2 = Instance.new("UIStroke")
	uistroke_2.Color = Color3.new(1, 1, 1)
	uistroke_2.Thickness = 2
	uistroke_2.Parent = buttons

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_2.Parent = buttons

	local uilist_layout_2 = Instance.new("UIListLayout")
	uilist_layout_2.Padding = UDim.new(0.029999999329447746, 0)
	uilist_layout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uilist_layout_2.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout_2.Parent = buttons

	local uipadding_2 = Instance.new("UIPadding")
	uipadding_2.PaddingTop = UDim.new(0.029999999329447746, 0)
	uipadding_2.Parent = buttons

	local main_gradient = Instance.new("UIGradient")
	main_gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
	main_gradient.Rotation = 90
	main_gradient.Name = "MainGradient"
	main_gradient.Parent = hexhub_frame

	local lib_title = Instance.new("TextLabel")
	lib_title.Font = Enum.Font.Gotham
	lib_title.Text = "Title"
	lib_title.TextColor3 = Color3.new(1, 1, 1)
	lib_title.TextScaled = true
	lib_title.TextSize = 14
	lib_title.TextWrapped = true
	lib_title.TextXAlignment = Enum.TextXAlignment.Left
	lib_title.BackgroundColor3 = Color3.new(1, 1, 1)
	lib_title.BackgroundTransparency = 1
	lib_title.Position = UDim2.new(0.0522979386, 0, 0.0158730168, 0)
	lib_title.Size = UDim2.new(0, 499, 0, 28)
	lib_title.Name = "LibTitle"
	lib_title.Parent = hexhub_frame

	local close = Instance.new("TextButton")
	close.Font = Enum.Font.SourceSans
	close.Text = " "
	close.TextColor3 = Color3.new(0, 0, 0)
	close.TextSize = 14
	close.BackgroundColor3 = Color3.new(1, 0, 0)
	close.Position = UDim2.new(0.957376897, 0, -0.03937345, 0)
	close.Rotation = 25
	close.Size = UDim2.new(0, 48, 0, 48)
	close.Name = "Close"
	close.Parent = hexhub_frame


	local uistroke_3 = Instance.new("UIStroke")
	uistroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke_3.Color = Color3.new(1, 1, 1)
	uistroke_3.Thickness = 2
	uistroke_3.Parent = close

	local uicorner_3 = Instance.new("UICorner")
	uicorner_3.CornerRadius = UDim.new(100, 100)
	uicorner_3.Parent = close

	local uigradient = Instance.new("UIGradient")
	uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
	uigradient.Rotation = 180
	uigradient.Parent = close

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Gotham
	text_label.Text = "X"
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.Position = UDim2.new(0.0965016708, 0, 0.0992066041, 0)
	text_label.Size = UDim2.new(0, 38, 0, 38)
	text_label.Parent = close

	local uistroke_4 = Instance.new("UIStroke")
	uistroke_4.Color = Color3.new(1, 1, 1)
	uistroke_4.Thickness = 2
	uistroke_4.Parent = settings_frame

	local uicorner_4 = Instance.new("UICorner")
	uicorner_4.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_4.Parent = settings_frame

	local toggle_sect = Instance.new("Frame")
	toggle_sect.AnchorPoint = Vector2.new(0.5, 0.5)
	toggle_sect.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	toggle_sect.Position = UDim2.new(0.267151892, 0, 0.261650562, 0)
	toggle_sect.Size = UDim2.new(0, 260, 0, 46)
	toggle_sect.Name = "ToggleSect"
	toggle_sect.Parent = settings_frame

	local uistroke_5 = Instance.new("UIStroke")
	uistroke_5.Color = Color3.new(1, 1, 1)
	uistroke_5.Thickness = 2
	uistroke_5.Parent = toggle_sect

	local uicorner_5 = Instance.new("UICorner")
	uicorner_5.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_5.Parent = toggle_sect

	local text_label_2 = Instance.new("TextLabel")
	text_label_2.Font = Enum.Font.Gotham
	text_label_2.Text = "UI Toggle"
	text_label_2.TextColor3 = Color3.new(1, 1, 1)
	text_label_2.TextScaled = true
	text_label_2.TextSize = 14
	text_label_2.TextWrapped = true
	text_label_2.TextXAlignment = Enum.TextXAlignment.Left
	text_label_2.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_2.BackgroundTransparency = 1
	text_label_2.Position = UDim2.new(0.0426113047, 0, 0.191978127, 0)
	text_label_2.Size = UDim2.new(0, 130, 0, 28)
	text_label_2.Parent = toggle_sect

	local key_bind = Instance.new("Frame")
	key_bind.AnchorPoint = Vector2.new(0.5, 0.5)
	key_bind.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	key_bind.Position = UDim2.new(0.858665109, 0, 0.479967862, 0)
	key_bind.Size = UDim2.new(0, 51, 0, 36)
	key_bind.Name = "KeyBind"
	key_bind.Parent = toggle_sect

	local uistroke_6 = Instance.new("UIStroke")
	uistroke_6.Color = Color3.new(1, 1, 1)
	uistroke_6.Thickness = 2
	uistroke_6.Parent = key_bind

	local uicorner_6 = Instance.new("UICorner")
	uicorner_6.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_6.Parent = key_bind

	local kbtext = Instance.new("TextLabel")
	kbtext.Font = Enum.Font.Gotham
	kbtext.Text = "RightControl"
	kbtext.TextColor3 = Color3.new(1, 1, 1)
	kbtext.TextScaled = true
	kbtext.TextSize = 14
	kbtext.TextWrapped = true
	kbtext.BackgroundColor3 = Color3.new(1, 1, 1)
	kbtext.BackgroundTransparency = 1
	kbtext.Position = UDim2.new(0.121042281, 0, 0.108645201, 0)
	kbtext.Size = UDim2.new(0, 37, 0, 28)
	kbtext.Name = "KBTEXT"
	kbtext.Parent = key_bind

	local keybind_button = Instance.new("TextButton")
	keybind_button.Font = Enum.Font.SourceSans
	keybind_button.Text = " "
	keybind_button.TextColor3 = Color3.new(0, 0, 0)
	keybind_button.TextSize = 14
	keybind_button.BackgroundColor3 = Color3.new(1, 1, 1)
	keybind_button.BackgroundTransparency = 1
	keybind_button.Size = UDim2.new(0, 51, 0, 36)
	keybind_button.Name = "KeybindButton"
	keybind_button.Parent = key_bind

	local text_label_3 = Instance.new("TextLabel")
	text_label_3.Font = Enum.Font.Gotham
	text_label_3.Text = "UI Settings"
	text_label_3.TextColor3 = Color3.new(1, 1, 1)
	text_label_3.TextScaled = true
	text_label_3.TextSize = 14
	text_label_3.TextWrapped = true
	text_label_3.TextXAlignment = Enum.TextXAlignment.Left
	text_label_3.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_3.BackgroundTransparency = 1
	text_label_3.Position = UDim2.new(0.0526784584, 0, 0.0253114104, 0)
	text_label_3.Size = UDim2.new(0, 205, 0, 28)
	text_label_3.Parent = settings_frame

	local theme_choose = Instance.new("Frame")
	theme_choose.AnchorPoint = Vector2.new(0.5, 0.5)
	theme_choose.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	theme_choose.Position = UDim2.new(0.728561342, 0, 0.261650562, 0)
	theme_choose.Size = UDim2.new(0, 260, 0, 46)
	theme_choose.Name = "ThemeChoose"
	theme_choose.Parent = settings_frame

	local uistroke_7 = Instance.new("UIStroke")
	uistroke_7.Color = Color3.new(1, 1, 1)
	uistroke_7.Thickness = 2
	uistroke_7.Parent = theme_choose

	local uicorner_7 = Instance.new("UICorner")
	uicorner_7.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_7.Parent = theme_choose

	

	local text_label_4 = Instance.new("TextLabel")
	text_label_4.Font = Enum.Font.Gotham
	text_label_4.Text = "Theme"
	text_label_4.TextColor3 = Color3.new(1, 1, 1)
	text_label_4.TextScaled = true
	text_label_4.TextSize = 14
	text_label_4.TextWrapped = true
	text_label_4.TextXAlignment = Enum.TextXAlignment.Left
	text_label_4.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_4.BackgroundTransparency = 1
	text_label_4.Position = UDim2.new(0.0426113047, 0, 0.191978127, 0)
	text_label_4.Size = UDim2.new(0, 130, 0, 28)
	text_label_4.Parent = theme_choose

	local dropdown = Instance.new("Frame")
	dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
	dropdown.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	dropdown.Position = UDim2.new(0.714434326, 0, 0.479967862, 0)
	dropdown.Size = UDim2.new(0, 126, 0, 36)
	dropdown.Name = "DropDown"
	dropdown.Parent = theme_choose

	local uistroke_8 = Instance.new("UIStroke")
	uistroke_8.Color = Color3.new(1, 1, 1)
	uistroke_8.Thickness = 2
	uistroke_8.Parent = dropdown

	local uicorner_8 = Instance.new("UICorner")
	uicorner_8.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_8.Parent = dropdown

	local text_label_5 = Instance.new("TextLabel")
	text_label_5.Font = Enum.Font.Gotham
	text_label_5.Text = "HexHub"
	text_label_5.TextColor3 = Color3.new(1, 1, 1)
	text_label_5.TextScaled = true
	text_label_5.TextSize = 14
	text_label_5.TextWrapped = true
	text_label_5.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_5.BackgroundTransparency = 1
	text_label_5.Position = UDim2.new(0.0416773185, 0, 0.136422902, 0)
	text_label_5.Size = UDim2.new(0, 75, 0, 28)
	text_label_5.Parent = dropdown

	local image_button = Instance.new("ImageButton")
	image_button.Image = "rbxassetid://10912985700"
	image_button.BackgroundColor3 = Color3.new(1, 1, 1)
	image_button.BackgroundTransparency = 1
	image_button.Position = UDim2.new(0.69714886, 0, 0.136422902, 0)
	image_button.Size = UDim2.new(0, 28, 0, 28)
	image_button.Parent = dropdown

	local aboutpage = Instance.new("Frame")
	aboutpage.AnchorPoint = Vector2.new(0.5, 0.5)
	aboutpage.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	aboutpage.Position = UDim2.new(0.500373363, 0, 0.777082682, 0)
	aboutpage.Size = UDim2.new(0, 374, 0, 118)
	aboutpage.Name = "Aboutpage"
	aboutpage.Parent = settings_frame

	local uistroke_9 = Instance.new("UIStroke")
	uistroke_9.Color = Color3.new(1, 1, 1)
	uistroke_9.Thickness = 2
	uistroke_9.Parent = aboutpage

	local uicorner_9 = Instance.new("UICorner")
	uicorner_9.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner_9.Parent = aboutpage


	local title = Instance.new("TextLabel")
	title.Font = Enum.Font.Gotham
	title.Text = "About HexHub"
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextScaled = true
	title.TextSize = 14
	title.TextWrapped = true
	title.BackgroundColor3 = Color3.new(1, 1, 1)
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(0.20303914, 0, 0.0563848466, 0)
	title.Size = UDim2.new(0, 219, 0, 28)
	title.Name = "Title"
	title.Parent = aboutpage

	local ui = Instance.new("TextLabel")
	ui.Font = Enum.Font.Gotham
	ui.Text = "UI Design - HexerMaster1929"
	ui.TextColor3 = Color3.new(1, 1, 1)
	ui.TextScaled = true
	ui.TextSize = 14
	ui.TextWrapped = true
	ui.BackgroundColor3 = Color3.new(1, 1, 1)
	ui.BackgroundTransparency = 1
	ui.Position = UDim2.new(0.0720231161, 0, 0.378418744, 0)
	ui.Size = UDim2.new(0, 320, 0, 28)
	ui.Name = "UI"
	ui.Parent = aboutpage

	local scripting = Instance.new("TextLabel")
	scripting.Font = Enum.Font.Gotham
	scripting.Text = "Scripting - MrolivesGaming"
	scripting.TextColor3 = Color3.new(1, 1, 1)
	scripting.TextScaled = true
	scripting.TextSize = 14
	scripting.TextWrapped = true
	scripting.BackgroundColor3 = Color3.new(1, 1, 1)
	scripting.BackgroundTransparency = 1
	scripting.Position = UDim2.new(0.0720231161, 0, 0.607232332, 0)
	scripting.Size = UDim2.new(0, 320, 0, 28)
	scripting.Name = "Scripting"
	scripting.Parent = aboutpage

	local branding = Instance.new("TextLabel")
	branding.Font = Enum.Font.Gotham
	branding.Text = "2022 HexHub Softworks"
	branding.TextColor3 = Color3.new(1, 1, 1)
	branding.TextScaled = true
	branding.TextSize = 14
	branding.TextWrapped = true
	branding.BackgroundColor3 = Color3.new(1, 1, 1)
	branding.BackgroundTransparency = 1
	branding.Position = UDim2.new(0.0720231161, 0, 0.844520152, 0)
	branding.Size = UDim2.new(0, 320, 0, 18)
	branding.Name = "Branding"
	branding.Parent = aboutpage

	local settingsButton = Instance.new("ImageButton")
	settingsButton.Image = "rbxassetid://10913108968"
	settingsButton.BackgroundColor3 = Color3.new(1, 1, 1)
	settingsButton.BackgroundTransparency = 1
	settingsButton.Position = UDim2.new(0.887323201, 0, 0.0147297829, 0)
	settingsButton.Size = UDim2.new(0, 28, 0, 28)
	settingsButton.Name = "Settings"
	settingsButton.Parent = hexhub_frame

	local open = Instance.new("TextButton")
	open.Visible = false
	open.Font = Enum.Font.FredokaOne
	open.Text = "H"
	open.TextColor3 = Color3.new(1, 1, 1)
	open.TextScaled = true
	open.TextSize = 27
	open.TextWrapped = true
	open.AnchorPoint = Vector2.new(0.5, 0.5)
	open.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
	open.Position = UDim2.new(0.487711221, 0, 0.0598081686, 0)
	open.Size = UDim2.new(0, 2, 0, 3)
	open.Name = "Open"
	open.Parent = hexhub_v3

	local uistroke_10 = Instance.new("UIStroke")
	uistroke_10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke_10.Color = Color3.new(1, 1, 1)
	uistroke_10.Thickness = 2
	uistroke_10.Parent = open

	local uicorner_10 = Instance.new("UICorner")
	uicorner_10.CornerRadius = UDim.new(0.05000000074505806, 10)
	uicorner_10.Parent = open
	
	lib_title.Text = WindowName
	
local function ShowUI()
	hexhub_frame.Visible = true
	hexhub_frame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
	open:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
	wait(.5)
	open.Visible = false
end

local function HideUI()
	hexhub_frame:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
	wait(.5)
	hexhub_frame.Visible = false
	open.Visible = true
	wait(.5)
		open:TweenSize(UDim2.new(0, 34, 0, 34), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
		
	end
	
	open.MouseButton1Down:Connect(function()
		ButtonSFX()
		ShowUI()
		
	end)

local UIS = game:GetService("UserInputService")

	function Lib:DraggingEnabled(frame, parent)

		parent = parent or frame

		-- stolen from wally or kiriot, kek
		local dragging = false
		local dragInput, mousePos, framePos

		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				mousePos = input.Position
				framePos = parent.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - mousePos
				parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
			end
		end)
	end

	Lib:DraggingEnabled(hexhub_frame, hexhub_frame)


local SettingToggleKeyBind = false

local UIToggled = true

local TogglekeyBind = Enum.KeyCode.RightControl

keybind_button.MouseButton1Down:Connect(function()
		ButtonSFX()
		if SettingToggleKeyBind == false then 
		SettingToggleKeyBind = true
			kbtext.Text = "..."
			
		end
end)

UIS.InputBegan:Connect(function(Input)
		if SettingToggleKeyBind == true then
			if Input.KeyCode ~= Enum.KeyCode.Unknown then
				TogglekeyBind = Input.KeyCode
				kbtext.Text = UIS:GetStringForKeyCode(Input.KeyCode)
				SettingToggleKeyBind = false
				
				end
		end
			
			if Input.KeyCode == TogglekeyBind then
				if UIToggled then
				HideUI()
				UIToggled = false
			elseif not UIToggled then
				ShowUI()
				UIToggled = true
					end
		      end
	 
	end)
	
	close.MouseButton1Down:Connect(function()
		ButtonSFX()
		if UIToggled then
			HideUI()
		end
	end)
	
	

	
	settingsButton.MouseButton1Down:Connect(function()
		ButtonSFX()
		if settings_frame.Visible == false then
			main_frame.Visible = false
			buttons.Visible = false
			settings_frame.Visible = true
		elseif settings_frame.Visible == true then
			main_frame.Visible = true
			buttons.Visible = true
			settings_frame.Visible = false
		end
	end)
	
	
	
	
	
	
	
	
	
	

local Tabs = {}

	function Tabs:NewTab(TabName)
		
	print("Tab")
	
	
	local TabButton = Instance.new("TextButton")
	TabButton.Font = Enum.Font.SourceSans
	TabButton.Text = ""
	TabButton.TextColor3 = Color3.new(0, 0, 0)
	TabButton.TextSize = 14
	TabButton.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
	TabButton.Position = UDim2.new(-0.615384579, 0, 0.0553646423, 0)
	TabButton.Size = UDim2.new(0, 115, 0, 40)
	TabButton.Name = "Tab1"
		TabButton.Parent = buttons

	local uistroke = Instance.new("UIStroke")
	uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke.Color = Color3.new(1, 1, 1)
	uistroke.Thickness = 2
	uistroke.Parent = TabButton

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
	uicorner.Parent = TabButton

	local uigradient = Instance.new("UIGradient")
	uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
	uigradient.Rotation = 180
	uigradient.Parent = TabButton

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Gotham
	text_label.Text = TabName
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.Position = UDim2.new(0.113167681, 0, 0.140872955, 0)
	text_label.Size = UDim2.new(0, 87, 0, 28)
		text_label.Parent = TabButton
		

		local NewTabFrame = Instance.new("ScrollingFrame")
		NewTabFrame.BottomImage = "rbxassetid://3062505976"
		NewTabFrame.MidImage = "rbxassetid://3062506202"
		NewTabFrame.TopImage = "rbxassetid://3062506445"
		NewTabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		NewTabFrame.ScrollBarImageColor3 = Color3.new(1, 1, 1)
		NewTabFrame.Active = true
		NewTabFrame.BackgroundColor3 = Color3.new(1, 1, 1)
		NewTabFrame.BackgroundTransparency = 1
		NewTabFrame.Position = UDim2.new(0.025056947, 0, 0.0462962948, 0)
		NewTabFrame.Size = UDim2.new(0, 417, 0, 295)
		NewTabFrame.Name = TabName
		NewTabFrame.Parent = main_frame
		NewTabFrame.Visible = false

		local TabFrameListLayout = Instance.new("UIListLayout")
		TabFrameListLayout.Padding = UDim.new(0, 10)
		TabFrameListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		TabFrameListLayout.Parent = NewTabFrame

		local uipadding = Instance.new("UIPadding")
		uipadding.PaddingLeft = UDim.new(0.008999999612569809, 0)
		uipadding.PaddingTop = UDim.new(0.009999999776482582, 0)
		uipadding.Parent = NewTabFrame
		
		
		local function UpdateTabSize()
			local cS = TabFrameListLayout.AbsoluteContentSize

			game.TweenService:Create(NewTabFrame, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				CanvasSize = UDim2.new(0,0,0,cS.Y + cS.X)
			}):Play()
		end
		
		TabButton.MouseButton1Down:Connect(function()
			ButtonSFX()
			for i,v in next, main_frame:GetChildren() do
				if v:IsA("UICorner") or v:IsA("UIScale") or v:IsA("UIListLayout") or v:IsA("UIStroke") or v:IsA("UIGradient") then 
					
					print("Attempted To Close A Non Closeable Item (Normal Error)")
						else
					v.Visible = false
						
				end
				
				
			end
			
			main_frame:FindFirstChild(tostring(TabName)).Visible = true
		end)
		
		
		local Sections = {}
		
	function Sections:NewSection(NewSectName)
		
		print("Section")

		
		local NewSectFrame = Instance.new("Frame")
			NewSectFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			NewSectFrame.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
			NewSectFrame.BackgroundTransparency = 0.949999988079071
			NewSectFrame.Position = UDim2.new(0.185297132, 0, 0.608183622, 0)
			NewSectFrame.Size = UDim2.new(0, 383, 0, 54)
			NewSectFrame.Name = "Section1"
			NewSectFrame.Parent = NewTabFrame
			NewSectFrame.ZIndex = 9e9
			
			UpdateTabSize()

		local section_name = Instance.new("TextLabel")
		section_name.Font = Enum.Font.Gotham
		section_name.Text = NewSectName
		section_name.TextColor3 = Color3.new(1, 1, 1)
		section_name.TextScaled = true
		section_name.TextSize = 14
		section_name.TextWrapped = true
		section_name.TextXAlignment = Enum.TextXAlignment.Left
		section_name.BackgroundColor3 = Color3.new(1, 1, 1)
		section_name.BackgroundTransparency = 1
		section_name.Position = UDim2.new(0.0426113009, 0, 0.209072053, 0)
		section_name.Size = UDim2.new(0, 307, 0, 28)
		section_name.Name = "SectionName"
			section_name.Parent = NewSectFrame

		local SectionToggle = Instance.new("ImageButton")
			SectionToggle.Image = "rbxassetid://10912985700"
			SectionToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			SectionToggle.BackgroundTransparency = 1
			SectionToggle.Position = UDim2.new(0.877284646, 0, 0.188839331, 0)
			SectionToggle.Size = UDim2.new(0, 32, 0, 32)
			SectionToggle.Name = "OpenButton"
			SectionToggle.Parent = NewSectFrame

		local section_main_piece = Instance.new("Frame")
		section_main_piece.AnchorPoint = Vector2.new(0.5, 0.5)
		section_main_piece.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
		section_main_piece.ClipsDescendants = true
		section_main_piece.Position = UDim2.new(0.499507248, 0, 0.497110993, 0)
		section_main_piece.Size = UDim2.new(0, 383, 0, 54)
		section_main_piece.ZIndex = 0
		section_main_piece.Name = "SectionMainPiece"
			section_main_piece.Parent = NewSectFrame

		local uistroke = Instance.new("UIStroke")
		uistroke.Color = Color3.new(1, 1, 1)
		uistroke.Thickness = 2
		uistroke.Parent = section_main_piece

		local uicorner = Instance.new("UICorner")
		uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
		uicorner.Parent = section_main_piece

		local section_obj_holder = Instance.new("ScrollingFrame")
		section_obj_holder.BottomImage = "rbxassetid://3062505976"
		section_obj_holder.CanvasSize = UDim2.new(0, 0, 0, 0)
		section_obj_holder.MidImage = "rbxassetid://3062506202"
		section_obj_holder.TopImage = "rbxassetid://3062506445"
		section_obj_holder.Active = true
		section_obj_holder.BackgroundColor3 = Color3.new(1, 1, 1)
		section_obj_holder.BackgroundTransparency = 1
		section_obj_holder.Position = UDim2.new(0.0419999957, 0, 0.282282114, 0)
		section_obj_holder.Size = UDim2.new(0, 351, 0, 156)
		section_obj_holder.Name = "SectionObjHolder"
			section_obj_holder.Parent = section_main_piece
			section_obj_holder.Visible = false

		local SectionOBJHList = Instance.new("UIListLayout")
			SectionOBJHList.Padding = UDim.new(0,10)
			SectionOBJHList.SortOrder = Enum.SortOrder.LayoutOrder
			SectionOBJHList.HorizontalAlignment = Enum.HorizontalAlignment.Left
			SectionOBJHList.Parent = section_obj_holder

		local uipadding = Instance.new("UIPadding")
		uipadding.PaddingLeft = UDim.new(0.007, 0)
		uipadding.PaddingTop = UDim.new(0.03999999910593033, 0)
			uipadding.Parent = section_obj_holder
			
			
			
			local function UpdateSectionSize()
				local cS = SectionOBJHList.AbsoluteContentSize
				
				SectionOBJHList.Padding = UDim.new(0, TabFrameListLayout.Padding.Offset - .12)
				
				game.TweenService:Create(section_obj_holder, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					CanvasSize = UDim2.new(0,0,0,cS.Y + 50)
				}):Play()
			end
			
			
			
			SectionToggle.MouseButton1Down:Connect(function()
				ButtonSFX()
				if section_obj_holder.Visible == false then
					NewSectFrame.ZIndex = 1
				game.TweenService:Create(SectionToggle, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
					Rotation = 180
				}):Play()
					
					game.TweenService:Create(section_main_piece, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
						Size = UDim2.new(0, 383,0, 236)

					}):Play()

game.TweenService:Create(section_main_piece, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
	Position = UDim2.new(0.5, 0,2.184, 0)
}):Play()
					
					wait(.15)
					
					section_obj_holder.Visible = true
					UpdateTabSize()
					UpdateSectionSize()
					
				elseif section_obj_holder.Visible == true then
					section_obj_holder.Visible = false
					wait(.15)
					game.TweenService:Create(SectionToggle, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
						Rotation = 0
					}):Play()
					
					game.TweenService:Create(section_main_piece, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
						Position = UDim2.new(0.5, 0,0.5, 0)
					}):Play()
					
					game.TweenService:Create(section_main_piece, TweenInfo.new(.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
						Size = UDim2.new(0, 383,0, 54)
					}):Play()

					NewSectFrame.ZIndex = 9e9
					
					UpdateTabSize()
					UpdateSectionSize()
					
					
				end
			end)
			

	
		
		local Elements = {}
		
		function Elements:NewButton(SideText,ButtonText,callback)
			callback = callback or function() end
			
				local new_button = Instance.new("Frame")
				new_button.AnchorPoint = Vector2.new(0.5, 0.5)
				new_button.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				new_button.Position = UDim2.new(0.499932706, 0, 0.202773333, 0)
				new_button.Size = UDim2.new(0, 333, 0, 45)
				new_button.Name = SideText
				new_button.Parent = section_obj_holder

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = new_button

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = new_button

				local button_title = Instance.new("TextLabel")
				button_title.Font = Enum.Font.Gotham
				button_title.Text = SideText
				button_title.TextColor3 = Color3.new(1, 1, 1)
				button_title.TextScaled = true
				button_title.TextSize = 14
				button_title.TextWrapped = true
				button_title.TextXAlignment = Enum.TextXAlignment.Left
				button_title.BackgroundColor3 = Color3.new(1, 1, 1)
				button_title.BackgroundTransparency = 1
				button_title.Position = UDim2.new(0.030599324, 0, 0.175738528, 0)
				button_title.Size = UDim2.new(0, 161, 0, 28)
				button_title.Name = "ButtonTitle"
				button_title.Parent = new_button

				local main_button = Instance.new("TextButton")
				main_button.Font = Enum.Font.SourceSans
				main_button.Text = " "
				main_button.TextColor3 = Color3.new(0, 0, 0)
				main_button.TextSize = 14
				main_button.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
				main_button.Position = UDim2.new(0.54835248, 0, 0.131294087, 0)
				main_button.Size = UDim2.new(0, 143, 0, 33)
				main_button.Name = "MainButton"
				main_button.Parent = new_button

				local uistroke_2 = Instance.new("UIStroke")
				uistroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uistroke_2.Color = Color3.new(1, 1, 1)
				uistroke_2.Thickness = 2
				uistroke_2.Parent = main_button

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_2.Parent = main_button

				local uigradient = Instance.new("UIGradient")
				uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.639216, 0.639216))})
				uigradient.Rotation = 180
				uigradient.Parent = main_button

				local button_text = Instance.new("TextLabel")
				button_text.Font = Enum.Font.Gotham
				button_text.Text = ButtonText
				button_text.TextColor3 = Color3.new(1, 1, 1)
				button_text.TextScaled = true
				button_text.TextSize = 14
				button_text.TextWrapped = true
				button_text.BackgroundColor3 = Color3.new(1, 1, 1)
				button_text.BackgroundTransparency = 1
				button_text.Position = UDim2.new(0.0712096766, 0, 0.0909090936, 0)
				button_text.Size = UDim2.new(0, 121, 0, 27)
				button_text.Name = "ButtonText"
				button_text.Parent = main_button
			
			
			UpdateSectionSize()
		
				main_button.MouseButton1Down:Connect(function()
					callback()
				end)
				
				
			
		end
		
		
			function Elements:NewLabel(LabelText)
				local NewLabel = Instance.new("Frame")
				NewLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				NewLabel.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				NewLabel.Position = UDim2.new(0.499932706, 0, 0.863487661, 0)
				NewLabel.Size = UDim2.new(0, 333, 0, 45)
				NewLabel.Name = "Label:"..tostring(LabelText)
				NewLabel.Parent = section_obj_holder

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = NewLabel

				local label_text = Instance.new("TextLabel")
				label_text.Font = Enum.Font.Gotham
				label_text.Text = LabelText
				label_text.TextColor3 = Color3.new(1, 1, 1)
				label_text.TextScaled = true
				label_text.TextSize = 14
				label_text.TextWrapped = true
				label_text.BackgroundColor3 = Color3.new(1, 1, 1)
				label_text.BackgroundTransparency = 1
				label_text.Position = UDim2.new(0.030599324, 0, 0.0666666701, 0)
				label_text.Size = UDim2.new(0, 315, 0, 39)
				label_text.Name = "LabelText"
				label_text.Parent = NewLabel

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = NewLabel
				
				UpdateSectionSize()
				
			end
		
			function Elements:NewToggle(ToggleName,callback)

				callback = callback or function() end

				local NewToggleFrame = Instance.new("Frame")
				NewToggleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				NewToggleFrame.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				NewToggleFrame.Position = UDim2.new(0.499932706, 0, 0.536106706, 0)
				NewToggleFrame.Size = UDim2.new(0, 333, 0, 45)
				NewToggleFrame.Name = "Toggle1"
				NewToggleFrame.Parent = section_obj_holder

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = NewToggleFrame

				local button_title = Instance.new("TextLabel")
				button_title.Font = Enum.Font.Gotham
				button_title.Text = "Test Toggle"
				button_title.TextColor3 = Color3.new(1, 1, 1)
				button_title.TextScaled = true
				button_title.TextSize = 14
				button_title.TextWrapped = true
				button_title.TextXAlignment = Enum.TextXAlignment.Left
				button_title.BackgroundColor3 = Color3.new(1, 1, 1)
				button_title.BackgroundTransparency = 1
				button_title.Position = UDim2.new(0.030599324, 0, 0.175738528, 0)
				button_title.Size = UDim2.new(0, 205, 0, 28)
				button_title.Name = "ButtonTitle"
				button_title.Parent = NewToggleFrame

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = NewToggleFrame

				local toggle_button = Instance.new("Frame")
				toggle_button.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_button.BackgroundColor3 = Color3.new(1, 1, 1)
				toggle_button.Position = UDim2.new(0.804392397, 0, 0.488686115, 0)
				toggle_button.Size = UDim2.new(0, 88, 0, 28)
				toggle_button.Name = "ToggleButton"
				toggle_button.Parent = NewToggleFrame

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_2.Parent = toggle_button

				local click = Instance.new("Frame")
				click.AnchorPoint = Vector2.new(0.5, 0.5)
				click.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
				click.Position = UDim2.new(0.153733253, 0, 0.480955124, 0)
				click.Size = UDim2.new(0, 34, 0, 34)
				click.Name = "Click"
				click.Parent = toggle_button

				local uicorner_3 = Instance.new("UICorner")
				uicorner_3.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_3.Parent = click

				local uistroke_2 = Instance.new("UIStroke")
				uistroke_2.Color = Color3.new(1, 1, 1)
				uistroke_2.Thickness = 2
				uistroke_2.Parent = click

				local toggleBtN = Instance.new("TextButton")
				toggleBtN.Font = Enum.Font.SourceSans
				toggleBtN.Text = ""
				toggleBtN.TextColor3 = Color3.new(0, 0, 0)
				toggleBtN.TextSize = 14
				toggleBtN.BackgroundColor3 = Color3.new(1, 1, 1)
				toggleBtN.BackgroundTransparency = 1
				toggleBtN.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				toggleBtN.Position = UDim2.new(0.0131991133, 0, -0.0840336233, 0)
				toggleBtN.Size = UDim2.new(0, 95, 0, 30)
				toggleBtN.Name = "ToggleBTN"
				toggleBtN.Parent = toggle_button
				
				UpdateSectionSize()

				local NewToggle_Toggled = false

				toggleBtN.MouseButton1Down:Connect(function()
					ButtonSFX()
					if NewToggle_Toggled then
						NewToggle_Toggled = false
						callback(false)
						click:TweenPosition(UDim2.new(0.153733253, 0, 0.480955124, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint,.15) 
					elseif not NewToggle_Toggled then
						NewToggle_Toggled = true
						callback(true)
						click:TweenPosition(UDim2.new(0.847, 0,0.481, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint,.15) 
					end
				end)

			end
			
			function Elements:NewTextBox(TextboxName,TextboxPlaceHolderText,callback)
				callback = callback or function() end
				
				local NewTextBoxFrame = Instance.new("Frame")
				NewTextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				NewTextBoxFrame.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				NewTextBoxFrame.Position = UDim2.new(0.499932706, 0, 0.658022523, 0)
				NewTextBoxFrame.Size = UDim2.new(0, 333, 0, 45)
				NewTextBoxFrame.Name = "Toggle1"
				NewTextBoxFrame.Parent = section_obj_holder

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = NewTextBoxFrame

				local TextboxTitle = Instance.new("TextLabel")
				TextboxTitle.Font = Enum.Font.Gotham
				TextboxTitle.Text = TextboxName
				TextboxTitle.TextColor3 = Color3.new(1, 1, 1)
				TextboxTitle.TextScaled = true
				TextboxTitle.TextSize = 14
				TextboxTitle.TextWrapped = true
				TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
				TextboxTitle.BackgroundColor3 = Color3.new(1, 1, 1)
				TextboxTitle.BackgroundTransparency = 1
				TextboxTitle.Position = UDim2.new(0.030599324, 0, 0.175738528, 0)
				TextboxTitle.Size = UDim2.new(0, 172, 0, 28)
				TextboxTitle.Name = "ButtonTitle"
				TextboxTitle.Parent = NewTextBoxFrame

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = NewTextBoxFrame

				local text_input_box = Instance.new("TextBox")
				text_input_box.CursorPosition = -1
				text_input_box.Font = Enum.Font.Gotham
				text_input_box.PlaceholderColor3 = Color3.new(0.870588, 0.870588, 0.870588)
				text_input_box.PlaceholderText = TextboxPlaceHolderText
				text_input_box.Text = ""
				text_input_box.TextColor3 = Color3.new(1, 1, 1)
				text_input_box.TextScaled = true
				text_input_box.TextSize = 14
				text_input_box.TextWrapped = true
				text_input_box.AnchorPoint = Vector2.new(0.5, 0.5)
				text_input_box.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
				text_input_box.Position = UDim2.new(0.750999987, 0, 0.5, 0)
				text_input_box.Size = UDim2.new(0, 135, 0, 33)
				text_input_box.Name = "TextInputBox"
				text_input_box.Parent = NewTextBoxFrame

				local uistroke_2 = Instance.new("UIStroke")
				uistroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uistroke_2.Color = Color3.new(1, 1, 1)
				uistroke_2.Thickness = 2
				uistroke_2.Parent = text_input_box

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_2.Parent = text_input_box
				
				UpdateSectionSize()
				
				text_input_box.FocusLost:Connect(function(EnterPressed)
					
					if EnterPressed then
						callback(text_input_box.Text)
						wait(0.18)
						text_input_box.Text = ""  
					end
				end)
				
end
	function Elements:NewSlider(SliderName,min,max,callback)
				
				local CurrentValue = 0
				
				callback = callback or function() end
				
				local slider1 = Instance.new("Frame")
				slider1.AnchorPoint = Vector2.new(0.5, 0.5)
				slider1.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				slider1.Position = UDim2.new(0.499932706, 0, 0.863487661, 0)
				slider1.Size = UDim2.new(0, 333, 0, 45)
				slider1.Name = "Slider1"
				slider1.Parent = section_obj_holder

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = slider1

				local slider_title = Instance.new("TextLabel")
				slider_title.Font = Enum.Font.Gotham
				slider_title.Text = SliderName
				slider_title.TextColor3 = Color3.new(1, 1, 1)
				slider_title.TextScaled = true
				slider_title.TextSize = 14
				slider_title.TextWrapped = true
				slider_title.BackgroundColor3 = Color3.new(1, 1, 1)
				slider_title.BackgroundTransparency = 1
				slider_title.Position = UDim2.new(0.030599324, 0, 0.0868503153, 0)
				slider_title.Size = UDim2.new(0, 122, 0, 23)
				slider_title.Name = "SliderTitle"
				slider_title.Parent = slider1

				local toggle_button = Instance.new("Frame")
				toggle_button.AnchorPoint = Vector2.new(0.5, 0.5)
				toggle_button.BackgroundColor3 = Color3.new(1, 1, 1)
				toggle_button.Position = UDim2.new(0.709410906, 0, 0.49979791, 0)
				toggle_button.Size = UDim2.new(0, 162, 0, 13)
				toggle_button.Name = "ToggleButton"
				toggle_button.Parent = slider1

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_2.Parent = toggle_button

				local click = Instance.new("Frame")
				click.AnchorPoint = Vector2.new(0.5, 0.5)
				click.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
				click.Position = UDim2.new(-0.0100675225, 0, 0.404032052, 0)
				click.Size = UDim2.new(0, 34, 0, 34)
				click.Name = "Click"
				click.Parent = toggle_button

				local uicorner_3 = Instance.new("UICorner")
				uicorner_3.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_3.Parent = click

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = click

				local slider_button = Instance.new("TextButton")
				slider_button.Font = Enum.Font.SourceSans
				slider_button.Text = ""
				slider_button.TextColor3 = Color3.new(0, 0, 0)
				slider_button.TextSize = 14
				slider_button.BackgroundColor3 = Color3.new(1, 1, 1)
				slider_button.BackgroundTransparency = 1
				slider_button.Size = UDim2.new(0, 34, 0, 34)
				slider_button.Name = "SliderButton"
				slider_button.Parent = click

				local uistroke_2 = Instance.new("UIStroke")
				uistroke_2.Color = Color3.new(1, 1, 1)
				uistroke_2.Thickness = 2
				uistroke_2.Parent = slider1

				local ValText = Instance.new("TextLabel")
				ValText.Font = Enum.Font.Gotham
				ValText.Text = min
				ValText.TextColor3 = Color3.new(1, 1, 1)
				ValText.TextScaled = true
				ValText.TextSize = 14
				ValText.TextWrapped = true
				ValText.BackgroundTransparency = 1
				ValText.BackgroundColor3 = Color3.new(1, 1, 1)
				ValText.Position = UDim2.new(0.0636323541, 0, 0.597961426, 0)
				ValText.Size = UDim2.new(0, 100, 0, 18)
				ValText.Name = "Value"
				ValText.Parent = slider1
		
				
				
				local startXScale = -.05;
				local endXScale = .95;
				local mouse = game:GetService("Players").LocalPlayer:GetMouse()

				-- Updates the position of the knob as well as the value
				local prevValue = nil;
				local function Update()
					local absPosition = slider1.AbsolutePosition.X;
					local absSize = slider1.AbsoluteSize.X;
					local mouseDelta = math.min(math.max(0, mouse.X - absPosition), absSize);
					local value = min + ((mouseDelta / absSize) * (max - min));
					click.Position = UDim2.new((mouseDelta / absSize) - .05, click.Position.X.Offset, click.Position.Y.Scale, click.Position.Y.Offset);
					if (prevValue ~= nil and math.floor(prevValue) ~= math.floor(value)) then
						callback(math.floor(value))
						ValText.Text = tostring(math.floor(value))
						prevValue = math.floor(value);
					else
						prevValue = math.floor(value);
					end
				end

				-- Coroutine to keep updating
				local keepUpdating = false;
				local function Updater()
					while (true) do
						if (keepUpdating) then
							Update()
						end
						wait(.05)
					end
				end
				local taskCoro = coroutine.create(Updater)
				coroutine.resume(taskCoro);

				-- Event Connecting
				slider_button.MouseButton1Down:Connect(function()
					keepUpdating = true;
				end)
				local UserInputService = game:GetService("UserInputService")
				UserInputService.InputEnded:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						keepUpdating = false;
					end
				end)
				
	end
				
			function Elements:NewKeybind(KeybindName,Keycode,callback)
				
				local keybind1 = Instance.new("Frame")
				keybind1.AnchorPoint = Vector2.new(0.5, 0.5)
				keybind1.BackgroundColor3 = Color3.new(0.541176, 0.54902, 1)
				keybind1.Position = UDim2.new(0.499932706, 0, 0.752362132, 0)
				keybind1.Size = UDim2.new(0, 333, 0, 45)
				keybind1.Name = "Keybind1"
				keybind1.Parent = section_obj_holder

				local uicorner = Instance.new("UICorner")
				uicorner.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner.Parent = keybind1

				local KT = Instance.new("TextLabel")
				KT.Font = Enum.Font.Gotham
				KT.Text = "Test KeyBind"
				KT.TextColor3 = Color3.new(1, 1, 1)
				KT.TextScaled = true
				KT.TextSize = 14
				KT.TextWrapped = true
				KT.TextXAlignment = Enum.TextXAlignment.Left
				KT.BackgroundColor3 = Color3.new(1, 1, 1)
				KT.BackgroundTransparency = 1
				KT.Position = UDim2.new(0.030599324, 0, 0.175739199, 0)
				KT.Size = UDim2.new(0, 186, 0, 28)
				KT.Name = "KeybindTitle"
				KT.Parent = keybind1

				local uistroke = Instance.new("UIStroke")
				uistroke.Color = Color3.new(1, 1, 1)
				uistroke.Thickness = 2
				uistroke.Parent = keybind1

				local KBF = Instance.new("Frame")
				KBF.AnchorPoint = Vector2.new(0.5, 0.5)
				KBF.BackgroundColor3 = Color3.new(0.666667, 0.666667, 1)
				KBF.Position = UDim2.new(0.783354342, 0, 0.5, 0)
				KBF.Size = UDim2.new(0, 115, 0, 36)
				KBF.Name = "KeyBind"
				KBF.Parent = keybind1

				local uistroke_2 = Instance.new("UIStroke")
				uistroke_2.Color = Color3.new(1, 1, 1)
				uistroke_2.Thickness = 2
				uistroke_2.Parent = KBF

				local uicorner_2 = Instance.new("UICorner")
				uicorner_2.CornerRadius = UDim.new(0.05000000074505806, 15)
				uicorner_2.Parent = KBF

				local KBTXT = Instance.new("TextLabel")
				KBTXT.Font = Enum.Font.Gotham
				KBTXT.Text = "Q"
				KBTXT.TextColor3 = Color3.new(1, 1, 1)
				KBTXT.TextScaled = true
				KBTXT.TextSize = 14
				KBTXT.TextWrapped = true
				KBTXT.BackgroundColor3 = Color3.new(1, 1, 1)
				KBTXT.BackgroundTransparency = 1
				KBTXT.Position = UDim2.new(0.129737914, 0, 0.108644277, 0)
				KBTXT.Size = UDim2.new(0, 84, 0, 28)
				KBTXT.Name = "KBTEXT"
				KBTXT.Parent = KBF

				local KBBTN = Instance.new("TextButton")
				KBBTN.Font = Enum.Font.SourceSans
				KBBTN.Text = " "
				KBBTN.TextColor3 = Color3.new(0, 0, 0)
				KBBTN.TextSize = 14
				KBBTN.BackgroundColor3 = Color3.new(1, 1, 1)
				KBBTN.BackgroundTransparency = 1
				KBBTN.Position = UDim2.new(-0.00664964737, 0, 0, 0)
				KBBTN.Size = UDim2.new(0, 115, 0, 36)
				KBBTN.Name = "KeybindButton"
				KBBTN.Parent = KBF				
				
				local CurrentKeyBind = Keycode
				local AwaitingKeyCodeInput = false
				
				KBTXT.Text = UIS:GetStringForKeyCode(Keycode)

				KBBTN.MouseButton1Down:Connect(function()
					ButtonSFX()
					if AwaitingKeyCodeInput == false then 
						AwaitingKeyCodeInput = true
						KBTXT.Text = ". . ."

					end
				end)

				UIS.InputBegan:Connect(function(Input)
					if AwaitingKeyCodeInput == true then
						if Input.KeyCode ~= Enum.KeyCode.Unknown then
							CurrentKeyBind = Input.KeyCode
							KBTXT.Text = UIS:GetStringForKeyCode(Input.KeyCode)
							AwaitingKeyCodeInput = false

						end
					end

					if Input.KeyCode == CurrentKeyBind then
						callback(CurrentKeyBind)
					end

				end)
				
			end
			
			
	function Elements:Dropdown(name,tabl,callback)
		-- not done
		
end
return Elements
		
	end
	return Sections	
		
	end
return Tabs

end
return Lib

