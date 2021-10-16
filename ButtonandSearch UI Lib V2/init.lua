local Library = {}

function Library:CreateWindow(CurrentlyVisible, Title)
	local ShittyGUImp4 = Instance.new("ScreenGui")
	local TopBar = Instance.new("Frame")
	local FakeFrame = Instance.new("Frame")
	local MainPart = Instance.new("Frame")
	local SearchBar = Instance.new("TextBox")
	local Line = Instance.new("Frame")
	local ButtonContainer = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local Name = Instance.new("TextLabel")
	local Close = Instance.new("ImageButton")
	local Minimize = Instance.new("ImageButton")

	--
	local CurrentlyShowing = CurrentlyVisible
	local MinDebounce = false
	CurrentlyVisible = CurrentlyVisible or true
	Title = Title or "Invalid string entered"
	--Properties:

	ShittyGUImp4.Name = Title
	ShittyGUImp4.Parent = game.CoreGui
	ShittyGUImp4.ResetOnSpawn = false
	ShittyGUImp4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


	TopBar.Name = "TopBar"
	TopBar.Parent = ShittyGUImp4
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0.5, 0, 0.379999995, 0)
	TopBar.Size = UDim2.new(0.290909082, 0, 0.0260688215, 0)
	local UIS = game:GetService('UserInputService')
	local frame = TopBar
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
	FakeFrame.Name = "FakeFrame"
	FakeFrame.Parent = TopBar
	FakeFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	FakeFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	FakeFrame.BackgroundTransparency = 1
	FakeFrame.BorderSizePixel = 0
	FakeFrame.ClipsDescendants = true
	FakeFrame.Position = UDim2.new(0.5, 0, 5.99200058, 0)
	FakeFrame.Size = UDim2.new(1, 0, 10, 0)

	MainPart.Name = "MainPart"
	MainPart.Parent = FakeFrame
	MainPart.AnchorPoint = Vector2.new(0.5, 0.5)
	MainPart.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	MainPart.BackgroundTransparency = 0
	MainPart.BorderSizePixel = 0
	MainPart.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainPart.Size = UDim2.new(1, 0, 1, 0)

	SearchBar.Name = "SearchBar"
	SearchBar.Parent = MainPart
	SearchBar.AnchorPoint = Vector2.new(0.5, 0.5)
	SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchBar.BackgroundTransparency = 1.000
	SearchBar.BorderSizePixel = 0
	SearchBar.Position = UDim2.new(0.5, 0, 0.0599999987, 0)
	SearchBar.Size = UDim2.new(1, 0, 0.119999997, 0)
	SearchBar.Font = Enum.Font.SourceSans
	SearchBar.PlaceholderText = "Search For A Script"
	SearchBar.Text = ""
	SearchBar.TextColor3 = Color3.fromRGB(230, 230, 203)
	SearchBar.TextScaled = true
	SearchBar.TextSize = 14.000
	SearchBar.TextWrapped = true
	local scroll = ButtonContainer
	local textBox = SearchBar

	textBox.Changed:Connect(function()
		local text = textBox.Text:lower()
		if text ~= "" then
			local buttons = scroll:GetDescendants()
			for _, button in pairs(buttons) do
				if button:IsA("TextButton") then
					local buttonText = button.Text:lower()
					if string.find(buttonText, text) then
						button.Visible = true
					else
						button.Visible = false
					end
				end
			end
		else
			local buttons = scroll:GetDescendants()
			for _, button in pairs(buttons) do
				if button:IsA("TextButton") then
					button.Visible = true
				end
			end
		end
	end)

	Line.Name = "Line"
	Line.Parent = MainPart
	Line.AnchorPoint = Vector2.new(0.5, 0.5)
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.5, 0, 0.125, 0)
	Line.Size = UDim2.new(1, 0, 0, 1)

	ButtonContainer.Name = "ButtonContainer"
	ButtonContainer.Parent = MainPart
	ButtonContainer.Active = true
	ButtonContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonContainer.BackgroundTransparency = 1.000
	ButtonContainer.BorderSizePixel = 0
	ButtonContainer.Position = UDim2.new(0.5, 0, 0.562499881, 0)
	ButtonContainer.Size = UDim2.new(1, 0, 0.867999971, 0)
	ButtonContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
	ButtonContainer.ScrollBarThickness = 1

	UIListLayout.Parent = ButtonContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 2)

	UIAspectRatioConstraint.Parent = TopBar
	UIAspectRatioConstraint.AspectRatio = 16.000
	
	ButtonContainer.CanvasSize = UDim2.new(0,0,0, UIListLayout.AbsoluteContentSize.Y)
	
	
	Name.Name = "Name"
	Name.Parent = TopBar
	Name.AnchorPoint = Vector2.new(0.5, 0.5)
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.BorderSizePixel = 0
	Name.Position = UDim2.new(0.292500019, 0, 0.491999507, 0)
	Name.Size = UDim2.new(0.550000012, 0, 1, 0)
	Name.Font = Enum.Font.SourceSans
	Name.Text = Title
	Name.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name.TextScaled = true
	Name.TextSize = 14.000
	Name.TextWrapped = true
	Name.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = TopBar
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.9375, 0, -0.0199999809, 0)
	Close.Size = UDim2.new(0.0625, 0, 1, 0)
	Close.ZIndex = 2
	Close.Image = "rbxassetid://3926305904"
	Close.ImageRectOffset = Vector2.new(924, 724)
	Close.ImageRectSize = Vector2.new(36, 36)

	Minimize.Name = "Minimize"
	Minimize.Parent = TopBar
	Minimize.BackgroundTransparency = 1.000
	Minimize.BorderSizePixel = 0
	Minimize.LayoutOrder = 31
	Minimize.Position = UDim2.new(0.862500012, 0, 0, 0)
	Minimize.Size = UDim2.new(0.075000003, 0, 1, 0)
	Minimize.ZIndex = 2
	Minimize.Image = "rbxassetid://3926305904"
	Minimize.ImageRectOffset = Vector2.new(404, 284)
	Minimize.ImageRectSize = Vector2.new(36, 36)
	Minimize.MouseButton1Click:Connect(function()
		if MinDebounce == false then
			MinDebounce = true
			if CurrentlyShowing == true then
				game:GetService("TweenService"):Create(MainPart, TweenInfo.new(0.3), {Position = UDim2.new(0.5, 0,-0.5, 0)}):Play()
				game:GetService("TweenService"):Create(Minimize, TweenInfo.new(0.3), {Rotation = 180}):Play()
				wait(0.3)
				CurrentlyShowing = false
				MinDebounce = false
			elseif CurrentlyShowing == false then
				game:GetService("TweenService"):Create(MainPart, TweenInfo.new(0.3), {Position = UDim2.new(0.5, 0,0.5, 0)}):Play()
				game:GetService("TweenService"):Create(Minimize, TweenInfo.new(0.3), {Rotation = 0}):Play()
				wait(0.3)
				CurrentlyShowing = true
				MinDebounce = false
			end
		end
	end)

	Close.MouseButton1Click:Connect(function()
		ShittyGUImp4:Destroy()
	end)

	if CurrentlyShowing == true then
		game:GetService("TweenService"):Create(MainPart, TweenInfo.new(0), {Position = UDim2.new(0.5, 0,0.5, 0)}):Play()
		game:GetService("TweenService"):Create(Minimize, TweenInfo.new(0), {Rotation = 0}):Play()
		CurrentlyShowing = true
	elseif CurrentlyShowing == false then
		game:GetService("TweenService"):Create(MainPart, TweenInfo.new(0), {Position = UDim2.new(0.5, 0,-0.5, 0)}):Play()
		game:GetService("TweenService"):Create(Minimize, TweenInfo.new(0), {Rotation = 180}):Play()
		CurrentlyShowing = false
	end

	local ButtonLib = {}

	function ButtonLib:CreateButton(ButtonText, callback)
		local callback = callback or function() end
		local Button = Instance.new("TextButton")
		ButtonText = ButtonText or "Invalid String Entered"

		Button.Name = "Button"
		Button.Parent = ButtonContainer
		Button.AnchorPoint = Vector2.new(0.5, 0.5)
		Button.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
		Button.Size = UDim2.new(1, 0, 0, 35)
		Button.Font = Enum.Font.SourceSans
		Button.Text = ButtonText
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextScaled = true
		Button.TextSize = 14.000
		Button.TextWrapped = true
		Button.MouseButton1Click:Connect(function() pcall(callback) end)
	end
	return ButtonLib
end
return Library
