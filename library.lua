local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local userId = player.UserId
local profilePictureUrl = string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420", userId)

local Slycer = {}
function Slycer:CreateWindow(GameName)
	if game.CoreGui:FindFirstChild("slycer") then
		game.CoreGui:FindFirstChild("slycer"):Destroy()
	end
	local slycer = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local UIStroke_1 = Instance.new("UIStroke")
	local TopBar_1 = Instance.new("Frame")
	local UIStroke_2 = Instance.new("UIStroke")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local Tabs_1 = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local CloseBtn_1 = Instance.new("TextButton")
	local ElementsHolder_1 = Instance.new("Frame")
	local InfoBar_1 = Instance.new("Frame")
	local Info_1 = Instance.new("TextLabel")
	local UIPadding_13 = Instance.new("UIPadding")
	local UIStroke_11 = Instance.new("UIStroke")
	local KeyBindsHolder_1 = Instance.new("Frame")
	local UIStroke_12 = Instance.new("UIStroke")
	local KBTopBar_1 = Instance.new("Frame")
	local UIStroke_13 = Instance.new("UIStroke")
	local KBTitle_1 = Instance.new("TextLabel")
	local UIPadding_14 = Instance.new("UIPadding")
	local KBMain_1 = Instance.new("Frame")
	local KeyBind2_1 = Instance.new("TextLabel")
	local UIPadding_15 = Instance.new("UIPadding")
	local KeyBind1_1 = Instance.new("TextLabel")
	local UIPadding_16 = Instance.new("UIPadding")
	local PlayerHolder_1 = Instance.new("Frame")
	local UIStroke_14 = Instance.new("UIStroke")
	local PlayerTopBar_1 = Instance.new("Frame")
	local UIStroke_15 = Instance.new("UIStroke")
	local PlayerTitle_1 = Instance.new("TextLabel")
	local UIPadding_17 = Instance.new("UIPadding")
	local PlayerMain_1 = Instance.new("Frame")
	local PlayerInGame_1 = Instance.new("TextLabel")
	local PlayerUserName_1 = Instance.new("TextLabel")
	local PlayerProfile_1 = Instance.new("ImageLabel")
	
	slycer.Name = "slycer"
	slycer.Parent = game.CoreGui
	slycer.Enabled = true

	Main_1.Name = "Main"
	Main_1.Parent = slycer
	Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.504578769, 0,0.5, 0)
	Main_1.Size = UDim2.new(0, 578,0, 413)

	local gui = Main_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	UIStroke_1.Parent = Main_1
	UIStroke_1.Color = Color3.fromRGB(87,87,87)
	UIStroke_1.Thickness = 1

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(35,35,35)
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Size = UDim2.new(0, 578,0, 21)

	UIStroke_2.Parent = TopBar_1
	UIStroke_2.Color = Color3.fromRGB(80,80,80)
	UIStroke_2.Thickness = 1

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0, 0,0.142857149, 0)
	Title_1.Size = UDim2.new(0, 79,0, 15)
	Title_1.Font = Enum.Font.Code
	Title_1.Text = "slycer.gg |"
	Title_1.TextColor3 = Color3.fromRGB(200,200,200)
	Title_1.TextSize = 13
	Title_1.TextStrokeTransparency = 0
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_1.Parent = Title_1
	UIPadding_1.PaddingLeft = UDim.new(0,6)

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = TopBar_1
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Position = UDim2.new(0.139999971, 0,0.129999802, 0)
	Tabs_1.Size = UDim2.new(0, 475,0, 18)

	UIListLayout_1.Parent = Tabs_1
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

	CloseBtn_1.Name = "CloseBtn"
	CloseBtn_1.Parent = TopBar_1
	CloseBtn_1.Active = true
	CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.BackgroundTransparency = 1
	CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseBtn_1.BorderSizePixel = 0
	CloseBtn_1.Position = UDim2.new(0.962699831, 0,0, 0)
	CloseBtn_1.Size = UDim2.new(0, 21,0, 21)
	CloseBtn_1.Font = Enum.Font.Code
	CloseBtn_1.Text = "X"
	CloseBtn_1.TextColor3 = Color3.fromRGB(200,200,200)
	CloseBtn_1.TextSize = 14
	CloseBtn_1.TextStrokeTransparency = 0
	CloseBtn_1.MouseButton1Click:Connect(function()
		game.CoreGui:FindFirstChild("slycer"):Destroy()
	end)

	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.0124334311, 0,0.0677966103, 0)
	ElementsHolder_1.Size = UDim2.new(0, 564,0, 378)
	
	InfoBar_1.Name = "InfoBar"
	InfoBar_1.Parent = Main_1
	InfoBar_1.AutomaticSize = Enum.AutomaticSize.X
	InfoBar_1.BackgroundColor3 = Color3.fromRGB(35,35,35)
	InfoBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	InfoBar_1.BorderSizePixel = 0
	InfoBar_1.Position = UDim2.new(0, 0,-0.0549999997, 0)
	InfoBar_1.Size = UDim2.new(0, 79,0, 18)

	Info_1.Name = "Info"
	Info_1.Parent = InfoBar_1
	Info_1.AutomaticSize = Enum.AutomaticSize.X
	Info_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Info_1.BackgroundTransparency = 1
	Info_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Info_1.BorderSizePixel = 0
	Info_1.Size = UDim2.new(0, 79,0, 18)
	Info_1.Font = Enum.Font.Code
	Info_1.Text = GameName.." | Public | V0.1 | "
	Info_1.TextColor3 = Color3.fromRGB(200,200,200)
	Info_1.TextSize = 13
	Info_1.TextStrokeTransparency = 0
	Info_1.TextXAlignment = Enum.TextXAlignment.Left
	
	local lastUpdateTime = tick()
	local frameCount = 0

	local function updateFPS()
		frameCount = frameCount + 1
		local currentTime = tick()
		if currentTime - lastUpdateTime >= 1 then
			local fps = frameCount / (currentTime - lastUpdateTime)
			Info_1.Text = GameName.." | Public | V0.1 | "..math.floor(fps).." Fps"
			lastUpdateTime = currentTime
			frameCount = 0
		end
	end

	game:GetService("RunService").Heartbeat:Connect(updateFPS)
	
	UIPadding_13.Parent = Info_1
	UIPadding_13.PaddingLeft = UDim.new(0,9)
	UIPadding_13.PaddingRight = UDim.new(0,6)

	UIStroke_11.Parent = InfoBar_1
	UIStroke_11.Color = Color3.fromRGB(80,80,80)
	UIStroke_11.Thickness = 1
	
	KeyBindsHolder_1.Name = "KeyBindsHolder"
	KeyBindsHolder_1.Parent = Main_1
	KeyBindsHolder_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
	KeyBindsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KeyBindsHolder_1.BorderSizePixel = 0
	KeyBindsHolder_1.Position = UDim2.new(1.00999999, 0,0, 0)
	KeyBindsHolder_1.Size = UDim2.new(0, 172,0, 69)

	UIStroke_12.Parent = KeyBindsHolder_1
	UIStroke_12.Color = Color3.fromRGB(80,80,80)
	UIStroke_12.Thickness = 1

	KBTopBar_1.Name = "KBTopBar"
	KBTopBar_1.Parent = KeyBindsHolder_1
	KBTopBar_1.BackgroundColor3 = Color3.fromRGB(35,35,35)
	KBTopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KBTopBar_1.BorderSizePixel = 0
	KBTopBar_1.Size = UDim2.new(0, 172,0, 21)

	UIStroke_13.Parent = KBTopBar_1
	UIStroke_13.Color = Color3.fromRGB(80,80,80)
	UIStroke_13.Thickness = 1

	KBTitle_1.Name = "KBTitle"
	KBTitle_1.Parent = KBTopBar_1
	KBTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	KBTitle_1.BackgroundTransparency = 1
	KBTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KBTitle_1.BorderSizePixel = 0
	KBTitle_1.Size = UDim2.new(0, 172,0, 21)
	KBTitle_1.Font = Enum.Font.Code
	KBTitle_1.Text = "Keybinds"
	KBTitle_1.TextColor3 = Color3.fromRGB(200,200,200)
	KBTitle_1.TextSize = 13
	KBTitle_1.TextStrokeTransparency = 0
	KBTitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_14.Parent = KBTitle_1
	UIPadding_14.PaddingLeft = UDim.new(0,6)

	KBMain_1.Name = "KBMain"
	KBMain_1.Parent = KeyBindsHolder_1
	KBMain_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	KBMain_1.BackgroundTransparency = 1
	KBMain_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KBMain_1.BorderSizePixel = 0
	KBMain_1.Position = UDim2.new(0, 0,0.304347813, 0)
	KBMain_1.Size = UDim2.new(0, 172,0, 48)

	KeyBind2_1.Name = "KeyBind2"
	KeyBind2_1.Parent = KBMain_1
	KeyBind2_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	KeyBind2_1.BackgroundTransparency = 1
	KeyBind2_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KeyBind2_1.BorderSizePixel = 0
	KeyBind2_1.Position = UDim2.new(0, 0,0, 23)
	KeyBind2_1.Size = UDim2.new(0, 172,0, 18)
	KeyBind2_1.Font = Enum.Font.Code
	KeyBind2_1.Text = "[L] Toggle Right GUI"
	KeyBind2_1.TextColor3 = Color3.fromRGB(120,120,120)
	KeyBind2_1.TextSize = 12
	KeyBind2_1.TextStrokeTransparency = 0
	KeyBind2_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_15.Parent = KeyBind2_1
	UIPadding_15.PaddingLeft = UDim.new(0,6)

	KeyBind1_1.Name = "KeyBind1"
	KeyBind1_1.Parent = KBMain_1
	KeyBind1_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	KeyBind1_1.BackgroundTransparency = 1
	KeyBind1_1.BorderColor3 = Color3.fromRGB(0,0,0)
	KeyBind1_1.BorderSizePixel = 0
	KeyBind1_1.Position = UDim2.new(-0.00100000005, 0,0, 3)
	KeyBind1_1.Size = UDim2.new(0, 172,0, 18)
	KeyBind1_1.Font = Enum.Font.Code
	KeyBind1_1.Text = "[P] Toggle Main GUI"
	KeyBind1_1.TextColor3 = Color3.fromRGB(120,120,120)
	KeyBind1_1.TextSize = 12
	KeyBind1_1.TextStrokeTransparency = 0
	KeyBind1_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_16.Parent = KeyBind1_1
	UIPadding_16.PaddingLeft = UDim.new(0,6)

	PlayerHolder_1.Name = "PlayerHolder"
	PlayerHolder_1.Parent = Main_1
	PlayerHolder_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
	PlayerHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerHolder_1.BorderSizePixel = 0
	PlayerHolder_1.Position = UDim2.new(1.00999987, 0,0, 75)
	PlayerHolder_1.Size = UDim2.new(0, 172,0, 76)

	UIStroke_14.Parent = PlayerHolder_1
	UIStroke_14.Color = Color3.fromRGB(80,80,80)
	UIStroke_14.Thickness = 1

	PlayerTopBar_1.Name = "PlayerTopBar"
	PlayerTopBar_1.Parent = PlayerHolder_1
	PlayerTopBar_1.BackgroundColor3 = Color3.fromRGB(35,35,35)
	PlayerTopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerTopBar_1.BorderSizePixel = 0
	PlayerTopBar_1.Size = UDim2.new(0, 172,0, 21)

	UIStroke_15.Parent = PlayerTopBar_1
	UIStroke_15.Color = Color3.fromRGB(80,80,80)
	UIStroke_15.Thickness = 1

	PlayerTitle_1.Name = "PlayerTitle"
	PlayerTitle_1.Parent = PlayerTopBar_1
	PlayerTitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PlayerTitle_1.BackgroundTransparency = 1
	PlayerTitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerTitle_1.BorderSizePixel = 0
	PlayerTitle_1.Size = UDim2.new(0, 172,0, 21)
	PlayerTitle_1.Font = Enum.Font.Code
	PlayerTitle_1.Text = "LocalPlayer"
	PlayerTitle_1.TextColor3 = Color3.fromRGB(200,200,200)
	PlayerTitle_1.TextSize = 13
	PlayerTitle_1.TextStrokeTransparency = 0
	PlayerTitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_17.Parent = PlayerTitle_1
	UIPadding_17.PaddingLeft = UDim.new(0,6)

	PlayerMain_1.Name = "PlayerMain"
	PlayerMain_1.Parent = PlayerHolder_1
	PlayerMain_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PlayerMain_1.BackgroundTransparency = 1
	PlayerMain_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerMain_1.BorderSizePixel = 0
	PlayerMain_1.Position = UDim2.new(0, 0,0.304347813, 0)
	PlayerMain_1.Size = UDim2.new(0, 172,0, 48)

	PlayerInGame_1.Name = "PlayerInGame"
	PlayerInGame_1.Parent = PlayerMain_1
	PlayerInGame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PlayerInGame_1.BackgroundTransparency = 1
	PlayerInGame_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerInGame_1.BorderSizePixel = 0
	PlayerInGame_1.Position = UDim2.new(0, 56,0, 24)
	PlayerInGame_1.Size = UDim2.new(0, 109,0, 18)
	PlayerInGame_1.ClipsDescendants = true
	PlayerInGame_1.Font = Enum.Font.Code
	PlayerInGame_1.Text = "0"
	PlayerInGame_1.TextColor3 = Color3.fromRGB(120,120,120)
	PlayerInGame_1.TextSize = 12
	PlayerInGame_1.TextStrokeTransparency = 0
	PlayerInGame_1.TextXAlignment = Enum.TextXAlignment.Left

	PlayerUserName_1.Name = "PlayerUserName"
	PlayerUserName_1.Parent = PlayerMain_1
	PlayerUserName_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PlayerUserName_1.BackgroundTransparency = 1
	PlayerUserName_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerUserName_1.BorderSizePixel = 0
	PlayerUserName_1.Position = UDim2.new(0.325582802, 0,0.0625, 3)
	PlayerUserName_1.Size = UDim2.new(0, 109,0, 18)
	PlayerUserName_1.ClipsDescendants = true
	PlayerUserName_1.Font = Enum.Font.Code
	PlayerUserName_1.Text = game.Players.LocalPlayer.Name
	PlayerUserName_1.TextColor3 = Color3.fromRGB(120,120,120)
	PlayerUserName_1.TextSize = 12
	PlayerUserName_1.TextStrokeTransparency = 0
	PlayerUserName_1.TextXAlignment = Enum.TextXAlignment.Left

	PlayerProfile_1.Name = "PlayerProfile"
	PlayerProfile_1.Parent = PlayerMain_1
	PlayerProfile_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	PlayerProfile_1.BackgroundTransparency = 1
	PlayerProfile_1.BorderColor3 = Color3.fromRGB(0,0,0)
	PlayerProfile_1.BorderSizePixel = 0
	PlayerProfile_1.Position = UDim2.new(0, 6,0, 6)
	PlayerProfile_1.Size = UDim2.new(0, 35,0, 35)
	PlayerProfile_1.ClipsDescendants = true
	PlayerProfile_1.Image = profilePictureUrl
	
	-- Get references to the TextLabel and initialize variables
	local startTime = tick() -- Get the initial time

	-- Function to update the timer
	local function updateTimer()
		local currentTime = tick() - startTime
		local minutes = math.floor(currentTime / 60)
		local seconds = math.floor(currentTime % 60)

		-- Format the time as a string (e.g., "01:23")
		local formattedTime = string.format("%02d:%02d", minutes, seconds)

		-- Update the TextLabel text
		PlayerInGame_1.Text = "In Game: " .. formattedTime
	end

	-- Connect the updateTimer function to the Heartbeat event
	local RunService = game:GetService("RunService")
	local heartbeatConnection

	-- Function to start the timer
	local function startTimer()
		startTime = tick()
		heartbeatConnection = RunService.Heartbeat:Connect(updateTimer)
	end

	-- Function to stop the timer
	local function stopTimer()
		if heartbeatConnection then
			heartbeatConnection:Disconnect()
			heartbeatConnection = nil
		end
	end

	-- Start the timer when the script runs
	startTimer()
	
	local isMainVisible = true
	local isFrame2Visible = true
	local isFrame3Visible = true

	-- Function to toggle the visibility of Main_1
	local function toggleMain()
		isMainVisible = not isMainVisible
		Main_1.Visible = isMainVisible
	end

	-- Function to toggle the visibility of Frame_2
	local function toggleFrame2()
		isFrame2Visible = not isFrame2Visible
		KeyBindsHolder_1.Visible = isFrame2Visible
	end

	-- Function to toggle the visibility of Frame_3
	local function toggleFrame3()
		isFrame3Visible = not isFrame3Visible
		PlayerHolder_1.Visible = isFrame3Visible
	end

	-- Bind the "P" key to toggle Main_1
	game:GetService("UserInputService").InputBegan:Connect(function(input, isProcessed)
		if not isProcessed and input.KeyCode == Enum.KeyCode.P then
			toggleMain()
		end
	end)

	-- Bind the "O" key to toggle Frame_2 and Frame_3
	game:GetService("UserInputService").InputBegan:Connect(function(input, isProcessed)
		if not isProcessed and input.KeyCode == Enum.KeyCode.L then
			toggleFrame2()
			toggleFrame3()
		end
	end)
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	function Tabs:CreateTab(TabText)
		local targetTabColorOn = Color3.fromRGB(200,200,200)
		local targetTabColorOff = Color3.fromRGB(110,110,110)

		local TabBtn_1 = Instance.new("TextButton")
		local UIPadding_2 = Instance.new("UIPadding")
		local Elements_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = Tabs_1
		TabBtn_1.Active = true
		TabBtn_1.AutomaticSize = Enum.AutomaticSize.X
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Size = UDim2.new(0, 25,0, 17)
		TabBtn_1.Font = Enum.Font.Code
		TabBtn_1.Text = TabText
		TabBtn_1.TextColor3 = Color3.fromRGB(110,110,110)
		TabBtn_1.TextSize = 13
		TabBtn_1.TextStrokeTransparency = 0

		UIPadding_2.Parent = TabBtn_1
		UIPadding_2.PaddingLeft = UDim.new(0,3)
		UIPadding_2.PaddingRight = UDim.new(0,3)

		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Elements_1.BackgroundTransparency = 1
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Position = UDim2.new(0.5, 0,0.5, 0)
		Elements_1.Size = UDim2.new(0, 564,0, 378)

		UIListLayout_2.Parent = Elements_1
		UIListLayout_2.Padding = UDim.new(0,9)
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtn_1 -- Set the first tab as the current tab
			TabBtn_1.TextColor3 = Color3.fromRGB(200,200,200)
		else
			Elements_1.Visible = false
		end

		TabBtn_1.MouseButton1Click:Connect(function()
			if currentTab then
				TabBtn_1.TextColor3 = Color3.fromRGB(110,110,110) -- Turn off color for the previous tab
			end

			TabBtn_1.TextColor3 = Color3.fromRGB(200,200,200) -- Turn on color for the new tab

			if currentTab and currentTab ~= TabBtn_1 then
				currentTab.TextColor3 =  Color3.fromRGB(110,110,110) -- Set the color of the previously selected tab to off
			end

			currentTab = TabBtn_1 -- Update the current tab
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end

			Elements_1.Visible = true
		end)

		local Items = {}
		function Items:CreateItem()
			local Items_1 = Instance.new("Frame")
			local UIListLayout_6 = Instance.new("UIListLayout")



			Items_1.Name = "Items"
			Items_1.Parent = Elements_1
			Items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Items_1.BackgroundTransparency = 1
			Items_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Items_1.BorderSizePixel = 0
			Items_1.Size = UDim2.new(0, 182,0, 375)	

			UIListLayout_6.Parent = Items_1
			UIListLayout_6.Padding = UDim.new(0,8)
			UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

			local Sections = {}
			function Sections:CreateSection()
				local Section_1 = Instance.new("Frame")
				local UIStroke_3 = Instance.new("UIStroke")
				local UIPadding_4 = Instance.new("UIPadding")
				local UIListLayout_3 = Instance.new("UIListLayout")

				Section_1.Name = "Section"
				Section_1.Parent = Items_1
				Section_1.AutomaticSize = Enum.AutomaticSize.Y
				Section_1.BackgroundColor3 = Color3.fromRGB(35,35,35)
				Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
				Section_1.BorderSizePixel = 0
				Section_1.Size = UDim2.new(0, 182,0, 15)

				UIStroke_3.Parent = Section_1
				UIStroke_3.Color = Color3.fromRGB(80,80,80)
				UIStroke_3.Thickness = 1	

				UIPadding_4.Parent = Section_1
				UIPadding_4.PaddingBottom = UDim.new(0,5)

				UIListLayout_3.Parent = Section_1
				UIListLayout_3.Padding = UDim.new(0,2)
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

				local Elements = {}
				function Elements:CreateLabel(LabelText)
					local Label_1 = Instance.new("Frame")
					local LabelText_1 = Instance.new("TextLabel")
					local UIPadding_3 = Instance.new("UIPadding")

					Label_1.Name = "Label"
					Label_1.Parent = Section_1
					Label_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Label_1.BackgroundTransparency = 1
					Label_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Label_1.BorderSizePixel = 0
					Label_1.Size = UDim2.new(0, 182,0, 17)

					LabelText_1.Name = "LabelText"
					LabelText_1.Parent = Label_1
					LabelText_1.AnchorPoint = Vector2.new(0.5, 0.5)
					LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					LabelText_1.BackgroundTransparency = 1
					LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
					LabelText_1.BorderSizePixel = 0
					LabelText_1.Position = UDim2.new(0.5, 0,0.5, 0)
					LabelText_1.Size = UDim2.new(0, 182,0, 17)
					LabelText_1.Font = Enum.Font.Code
					LabelText_1.Text = LabelText
					LabelText_1.TextColor3 = Color3.fromRGB(200,200,200)
					LabelText_1.TextSize = 12
					LabelText_1.TextStrokeTransparency = 0
					LabelText_1.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_3.Parent = LabelText_1
					UIPadding_3.PaddingLeft = UDim.new(0,6)	
				end
				function Elements:CreateButton(ButtonText,Callback)
					Callback = Callback or function()
					end
					local Button_1 = Instance.new("Frame")
					local ButtonHolder_1 = Instance.new("Frame")
					local ButtonBtn_1 = Instance.new("TextButton")
					local UIStroke_4 = Instance.new("UIStroke")

					Button_1.Name = "Button"
					Button_1.Parent = Section_1
					Button_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Button_1.BackgroundTransparency = 1
					Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Button_1.BorderSizePixel = 0
					Button_1.Position = UDim2.new(0, 0,0.447368413, 0)
					Button_1.Size = UDim2.new(0, 182,0, 17)

					ButtonHolder_1.Name = "ButtonHolder"
					ButtonHolder_1.Parent = Button_1
					ButtonHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonHolder_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
					ButtonHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ButtonHolder_1.BorderSizePixel = 0
					ButtonHolder_1.Position = UDim2.new(0.5, 0,0.5, 0)
					ButtonHolder_1.Size = UDim2.new(0, 171,0, 13)

					ButtonBtn_1.Name = "ButtonBtn"
					ButtonBtn_1.Parent = ButtonHolder_1
					ButtonBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ButtonBtn_1.BackgroundTransparency = 1
					ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ButtonBtn_1.BorderSizePixel = 0
					ButtonBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
					ButtonBtn_1.Size = UDim2.new(0, 171,0, 13)
					ButtonBtn_1.Font = Enum.Font.Code
					ButtonBtn_1.Text = ButtonText
					ButtonBtn_1.TextColor3 = Color3.fromRGB(200,200,200)
					ButtonBtn_1.TextSize = 12
					ButtonBtn_1.TextStrokeTransparency = 0

					UIStroke_4.Parent = ButtonHolder_1
					UIStroke_4.Color = Color3.fromRGB(80,80,80)
					UIStroke_4.Thickness = 1

					ButtonBtn_1.MouseButton1Click:Connect(function()
						ButtonHolder_1.BackgroundColor3 = Color3.fromRGB(70,70,70)
						wait(0.1)
						ButtonHolder_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
						Callback()
					end)
				end
				function Elements:CreateToggle(ToggleText,state,Callback)
					Callback = Callback or function()
					end

					local toggled = state or false
					local debounce = false


					local Toggle_1 = Instance.new("Frame")
					local ToggleBtn_1 = Instance.new("TextButton")
					local UIPadding_5 = Instance.new("UIPadding")
					local Toggler_1 = Instance.new("Frame")
					local UIStroke_5 = Instance.new("UIStroke")

					Toggle_1.Name = "Toggle"
					Toggle_1.Parent = Section_1
					Toggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Toggle_1.BackgroundTransparency = 1
					Toggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Toggle_1.BorderSizePixel = 0
					Toggle_1.Size = UDim2.new(0, 182,0, 17)

					ToggleBtn_1.Name = "ToggleBtn"
					ToggleBtn_1.Parent = Toggle_1
					ToggleBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
					ToggleBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ToggleBtn_1.BackgroundTransparency = 1
					ToggleBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ToggleBtn_1.BorderSizePixel = 0
					ToggleBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
					ToggleBtn_1.Size = UDim2.new(0, 182,0, 17)
					ToggleBtn_1.Font = Enum.Font.Code
					ToggleBtn_1.Text = ToggleText
					ToggleBtn_1.TextColor3 = Color3.fromRGB(200,200,200)
					ToggleBtn_1.TextSize = 12
					ToggleBtn_1.TextStrokeTransparency = 0
					ToggleBtn_1.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_5.Parent = ToggleBtn_1
					UIPadding_5.PaddingLeft = UDim.new(0,20)

					Toggler_1.Name = "Toggler"
					Toggler_1.Parent = Toggle_1
					Toggler_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
					Toggler_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Toggler_1.BorderSizePixel = 0
					Toggler_1.Position = UDim2.new(0.0299999993, 0,0.234999999, 0)
					Toggler_1.Size = UDim2.new(0, 9,0, 9)

					UIStroke_5.Parent = Toggler_1
					UIStroke_5.Color = Color3.fromRGB(80,80,80)
					UIStroke_5.Thickness = 1

					if toggled then
						Toggler_1.BackgroundColor3 = Color3.fromRGB(235,8,0)
					else
						Toggler_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
					end

					ToggleBtn_1.MouseButton1Click:Connect(
						function()
							if debounce == false then
								if toggled == false then
									debounce = true
									Toggler_1.BackgroundColor3 = Color3.fromRGB(235,8,0)
									debounce = false
									toggled = true
									pcall(Callback, toggled)
								elseif toggled == true then
									debounce = true
									Toggler_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
									debounce = false
									toggled = false
									pcall(Callback, toggled)
								end
							end
						end
					)

				end
				function Elements:CreateSlider(SliderText,max,Callback)
					local Slider_1 = Instance.new("Frame")
					local SliderText_1 = Instance.new("TextLabel")
					local UIPadding_6 = Instance.new("UIPadding")
					local SliderHolder_1 = Instance.new("Frame")
					local UIStroke_6 = Instance.new("UIStroke")
					local SliderBtn_1 = Instance.new("TextButton")
					local SliderInner_1 = Instance.new("Frame")
					local SliderValue_1 = Instance.new("TextLabel")

					Slider_1.Name = "Slider"
					Slider_1.Parent = Section_1
					Slider_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Slider_1.BackgroundTransparency = 1
					Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Slider_1.BorderSizePixel = 0
					Slider_1.Position = UDim2.new(0, 0,0.626373649, 0)
					Slider_1.Size = UDim2.new(0, 182,0, 35)

					SliderText_1.Name = "SliderText"
					SliderText_1.Parent = Slider_1
					SliderText_1.AnchorPoint = Vector2.new(0.5, 0.5)
					SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					SliderText_1.BackgroundTransparency = 1
					SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SliderText_1.BorderSizePixel = 0
					SliderText_1.Position = UDim2.new(0.5, 0,0.357142866, 0)
					SliderText_1.Size = UDim2.new(0, 182,0, 17)
					SliderText_1.Font = Enum.Font.Code
					SliderText_1.Text = SliderText
					SliderText_1.TextColor3 = Color3.fromRGB(200,200,200)
					SliderText_1.TextSize = 12
					SliderText_1.TextStrokeTransparency = 0
					SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_6.Parent = SliderText_1
					UIPadding_6.PaddingLeft = UDim.new(0,6)

					SliderHolder_1.Name = "SliderHolder"
					SliderHolder_1.Parent = Slider_1
					SliderHolder_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
					SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SliderHolder_1.BorderSizePixel = 0
					SliderHolder_1.Position = UDim2.new(0.0270000007, 0,0.699999988, 0)
					SliderHolder_1.Size = UDim2.new(0, 171,0, 9)

					UIStroke_6.Parent = SliderHolder_1
					UIStroke_6.Color = Color3.fromRGB(80,80,80)
					UIStroke_6.Thickness = 1

					SliderBtn_1.Name = "SliderBtn"
					SliderBtn_1.Parent = SliderHolder_1
					SliderBtn_1.Active = true
					SliderBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
					SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					SliderBtn_1.BackgroundTransparency = 1
					SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SliderBtn_1.BorderSizePixel = 0
					SliderBtn_1.Position = UDim2.new(0.5, 0,0.5, 0)
					SliderBtn_1.Size = UDim2.new(0, 171,0, 9)
					SliderBtn_1.Font = Enum.Font.SourceSans
					SliderBtn_1.Text = ""
					SliderBtn_1.TextSize = 14

					SliderInner_1.Name = "SliderInner"
					SliderInner_1.Parent = SliderBtn_1
					SliderInner_1.BackgroundColor3 = Color3.fromRGB(235,8,0)
					SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SliderInner_1.BorderSizePixel = 0
					SliderInner_1.Position = UDim2.new(1.07079222e-06, 0,0, 0)
					SliderInner_1.Size = UDim2.new(0, 0,0, 9)

					SliderValue_1.Name = "SliderValue"
					SliderValue_1.Parent = SliderHolder_1
					SliderValue_1.AnchorPoint = Vector2.new(0.5, 0.5)
					SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					SliderValue_1.BackgroundTransparency = 1
					SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
					SliderValue_1.BorderSizePixel = 0
					SliderValue_1.Position = UDim2.new(0.5, 0,0.5, 0)
					SliderValue_1.Size = UDim2.new(0, 171,0, 9)
					SliderValue_1.Font = Enum.Font.Code
					SliderValue_1.Text = "0/"..max
					SliderValue_1.TextColor3 = Color3.fromRGB(200,200,200)
					SliderValue_1.TextSize = 12
					SliderValue_1.TextStrokeTransparency = 0

					local isDragging = false

					SliderBtn_1.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							isDragging = true
						end
					end)

					game:GetService("UserInputService").InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							isDragging = false
						end
					end)

					game:GetService("RunService").RenderStepped:Connect(function()
						if isDragging then
							local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
							local sliderPosition = SliderBtn_1.AbsolutePosition
							local sliderWidth = SliderBtn_1.AbsoluteSize.X
							local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
							SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)

							-- Calculate and display value label
							local value = fillWidth / sliderWidth
							local minValue = 0
							local maxValue = max
							local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)
							SliderValue_1.Text = tostring(displayValue).."/"..tostring(maxValue)
							Callback(displayValue)
						end
					end)
				end
				function Elements:CreateDropdown(selected,options,Callback)
					local Dropdown_1 = Instance.new("Frame")
					local TopBarHolder_1 = Instance.new("Frame")
					local DropdownTopBar_1 = Instance.new("Frame")
					local DropdownBtn_1 = Instance.new("TextButton")
					local UIStroke_7 = Instance.new("UIStroke")
					local TextLabel_1 = Instance.new("TextLabel")
					local UIPadding_7 = Instance.new("UIPadding")
					local OptionsFrameHolder_1 = Instance.new("Frame")
					local UIStroke_8 = Instance.new("UIStroke")
					local ScrollingFrame_1 = Instance.new("ScrollingFrame")
					local UIListLayout_4 = Instance.new("UIListLayout")
					local TextButton_1 = Instance.new("TextButton")
					local UIPadding_8 = Instance.new("UIPadding")
					local UIPadding_9 = Instance.new("UIPadding")

					Dropdown_1.Name = "Dropdown"
					Dropdown_1.Parent = Section_1
					Dropdown_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					Dropdown_1.BackgroundTransparency = 1
					Dropdown_1.BorderColor3 = Color3.fromRGB(0,0,0)
					Dropdown_1.BorderSizePixel = 0
					Dropdown_1.Position = UDim2.new(0, 0,0.447368413, 0)
					Dropdown_1.Size = UDim2.new(0, 182,0, 15)

					TopBarHolder_1.Name = "TopBarHolder"
					TopBarHolder_1.Parent = Dropdown_1
					TopBarHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TopBarHolder_1.BackgroundTransparency = 1
					TopBarHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TopBarHolder_1.BorderSizePixel = 0
					TopBarHolder_1.Size = UDim2.new(0, 182,0, 17)

					DropdownTopBar_1.Name = "DropdownTopBar"
					DropdownTopBar_1.Parent = TopBarHolder_1
					DropdownTopBar_1.AnchorPoint = Vector2.new(0.5, 0.5)
					DropdownTopBar_1.AutomaticSize = Enum.AutomaticSize.Y
					DropdownTopBar_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
					DropdownTopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
					DropdownTopBar_1.BorderSizePixel = 0
					DropdownTopBar_1.Position = UDim2.new(0.5, 0,0.5, 0)
					DropdownTopBar_1.Size = UDim2.new(0, 171,0, 13)

					DropdownBtn_1.Name = "DropdownBtn"
					DropdownBtn_1.Parent = DropdownTopBar_1
					DropdownBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)
					DropdownBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					DropdownBtn_1.BackgroundTransparency = 1
					DropdownBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
					DropdownBtn_1.BorderSizePixel = 0
					DropdownBtn_1.Position = UDim2.new(0.948830426, 0,0.5, 0)
					DropdownBtn_1.Size = UDim2.new(0, 17,0, 17)
					DropdownBtn_1.Font = Enum.Font.Code
					DropdownBtn_1.Text = "+"
					DropdownBtn_1.TextColor3 = Color3.fromRGB(200,200,200)
					DropdownBtn_1.TextSize = 12
					DropdownBtn_1.TextStrokeTransparency = 0

					UIStroke_7.Parent = DropdownTopBar_1
					UIStroke_7.Color = Color3.fromRGB(80,80,80)
					UIStroke_7.Thickness = 1

					TextLabel_1.Parent = DropdownTopBar_1
					TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TextLabel_1.BackgroundTransparency = 1
					TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TextLabel_1.BorderSizePixel = 0
					TextLabel_1.Size = UDim2.new(0, 116,0, 13)
					TextLabel_1.Font = Enum.Font.SourceSans
					TextLabel_1.Text = selected or "NONE"
					TextLabel_1.TextColor3 = Color3.fromRGB(200,200,200)
					TextLabel_1.TextSize = 13
					TextLabel_1.TextStrokeTransparency = 0
					TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_7.Parent = TextLabel_1
					UIPadding_7.PaddingLeft = UDim.new(0,4)

					OptionsFrameHolder_1.Name = "OptionsFrameHolder"
					OptionsFrameHolder_1.Parent = TopBarHolder_1
					OptionsFrameHolder_1.AutomaticSize = Enum.AutomaticSize.Y
					OptionsFrameHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					OptionsFrameHolder_1.BackgroundTransparency = 1
					OptionsFrameHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
					OptionsFrameHolder_1.BorderSizePixel = 0
					OptionsFrameHolder_1.Position = UDim2.new(0.0299999993, 0,0.100000001, 0)
					OptionsFrameHolder_1.Size = UDim2.new(0, 171,0, 14)

					UIStroke_8.Parent = OptionsFrameHolder_1
					UIStroke_8.Color = Color3.fromRGB(80,80,80)
					UIStroke_8.Thickness = 1

					ScrollingFrame_1.Name = "ScrollingFrame"
					ScrollingFrame_1.Parent = OptionsFrameHolder_1
					ScrollingFrame_1.Active = true
					ScrollingFrame_1.AutomaticSize = Enum.AutomaticSize.X
					ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					ScrollingFrame_1.BackgroundTransparency = 1
					ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
					ScrollingFrame_1.BorderSizePixel = 0
					ScrollingFrame_1.Position = UDim2.new(0, 0,0.3, 0)
					ScrollingFrame_1.Size = UDim2.new(0, 172,0, 53)
					ScrollingFrame_1.ClipsDescendants = true
					ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
					ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
					ScrollingFrame_1.CanvasPosition = Vector2.new(0, 0)
					ScrollingFrame_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
					ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.Never
					ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
					ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
					ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
					ScrollingFrame_1.ScrollBarImageTransparency = 1
					ScrollingFrame_1.ScrollBarThickness = 1
					ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.Y
					ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
					ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
					ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
					ScrollingFrame_1.Visible = false

					UIListLayout_4.Parent = ScrollingFrame_1
					UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

					TextButton_1.Parent = ScrollingFrame_1
					TextButton_1.Active = true
					TextButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					TextButton_1.BackgroundTransparency = 1
					TextButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
					TextButton_1.BorderSizePixel = 0
					TextButton_1.Position = UDim2.new(0, 0,0.514285743, 0)
					TextButton_1.Size = UDim2.new(0, 170,0, 14)
					TextButton_1.Font = Enum.Font.Code
					TextButton_1.Text = "Select:"
					TextButton_1.TextColor3 = Color3.fromRGB(200,200,200)
					TextButton_1.TextSize = 12
					TextButton_1.TextStrokeTransparency = 0

					UIPadding_8.Parent = ScrollingFrame_1
					UIPadding_8.PaddingBottom = UDim.new(0,3)
					UIPadding_8.PaddingTop = UDim.new(0,3)

					UIPadding_9.Parent = Dropdown_1
					UIPadding_9.PaddingTop = UDim.new(0,2)



					local function ToggleDropdown()
						local isExpanded = ScrollingFrame_1.Visible
						local targetSize = isExpanded and UDim2.new(0, 275, 0, 15) or UDim2.new(0, 275, 0, 70)

						if isExpanded then
							ScrollingFrame_1.Visible = false
							DropdownBtn_1.Text = "+"
						else
							ScrollingFrame_1.Visible = true
							DropdownBtn_1.Text = "-"
						end

						Dropdown_1.Size = targetSize
					end

					local function CreateOptionButton(option)
						local OptionButtonClone = TextButton_1:Clone()
						OptionButtonClone.Parent = ScrollingFrame_1
						OptionButtonClone.Text = option
						OptionButtonClone.LayoutOrder = #ScrollingFrame_1:GetChildren()
						OptionButtonClone.MouseButton1Click:Connect(function()
							TextLabel_1.Text = option
							ToggleDropdown()
							Callback(option) -- Call the provided callback function
						end)
					end

					local function InitializeDropdown()
						for _, option in ipairs(options) do
							CreateOptionButton(option)
						end
					end

					InitializeDropdown() -- Call the InitializeDropdown function to set up the dropdown

					DropdownBtn_1.MouseButton1Click:Connect(ToggleDropdown)




				end
				return Elements
			end
			return Sections
		end
		return Items
	end
	return Tabs
end
return Slycer
