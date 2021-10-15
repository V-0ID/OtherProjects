local Library = {}

function Library:CreateWindow(Libname)

	local VoidLib = Instance.new("ScreenGui")
	local TopBar = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local Container = Instance.new("Frame")
	local ButtonHolder = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Searchbar = Instance.new("TextBox")
	local Line = Instance.new("Frame")
	local Close = Instance.new("ImageButton")
	local Minimize = Instance.new("ImageButton")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	VoidLib.Name = "VoidLib"
	VoidLib.Parent = game.CoreGui
	VoidLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	VoidLib.DisplayOrder = 99999
	VoidLib.ResetOnSpawn = false

	TopBar.Name = "TopBar"
	TopBar.Parent = VoidLib
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(13, 27, 42)
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0.492808491, 0, 0.400000036, 0)
	TopBar.Size = UDim2.new(0.26516968, 0, 0.036275696, 0)
	TopBar.ZIndex = 20

	Main.Name = "Main"
	Main.Parent = TopBar
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(27, 38, 59)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.50000006, 0, 4.66666651, 0)
	Main.Size = UDim2.new(1.00000012, 0, 7.33333397, 0)
	Main.ZIndex = 10

	Container.Name = "Container"
	Container.Parent = Main
	Container.AnchorPoint = Vector2.new(0.5, 0.5)
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0.5, 0, 0.568181813, 0)
	Container.Size = UDim2.new(1.00000012, 0, 0.863636374, 0)
	Container.ZIndex = 10

	ButtonHolder.Name = "ButtonHolder"
	ButtonHolder.Parent = Container
	ButtonHolder.Active = true
	ButtonHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonHolder.BackgroundTransparency = 1.000
	ButtonHolder.BorderSizePixel = 0
	ButtonHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	ButtonHolder.Size = UDim2.new(1, 0, 1, 0)
	ButtonHolder.ZIndex = 15
	ButtonHolder.ScrollBarThickness = 5

	UIListLayout.Parent = ButtonHolder
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	UIPadding.Parent = ButtonHolder
	UIPadding.PaddingBottom = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5)

	Searchbar.Name = "Searchbar"
	Searchbar.Parent = Main
	Searchbar.AnchorPoint = Vector2.new(0.5, 0.5)
	Searchbar.BackgroundColor3 = Color3.fromRGB(65, 90, 119)
	Searchbar.BackgroundTransparency = 1.000
	Searchbar.BorderSizePixel = 0
	Searchbar.Position = UDim2.new(0.5, 0, 0.0681818128, 0)
	Searchbar.Size = UDim2.new(1, 0, 0.136000007, 0)
	Searchbar.ZIndex = 15
	Searchbar.Font = Enum.Font.SourceSansLight
	Searchbar.PlaceholderText = "Search For A Script Here..."
	Searchbar.Text = ""
	Searchbar.TextColor3 = Color3.fromRGB(255, 255, 255)
	Searchbar.TextScaled = true
	Searchbar.TextSize = 14.000
	Searchbar.TextWrapped = true

	Line.Name = "Line"
	Line.Parent = Main
	Line.AnchorPoint = Vector2.new(0.5, 0.5)
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.5, 0, 0.13636364, 0)
	Line.Size = UDim2.new(1, 0, 0.00700000022, 0)
	Line.ZIndex = 15

	Close.Name = "Close"
	Close.Parent = TopBar
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.LayoutOrder = 3
	Close.Position = UDim2.new(0.924785793, 0, 0.0818619728, 0)
	Close.Size = UDim2.new(0.0721951649, 0, 0.833333313, 0)
	Close.ZIndex = 25
	Close.Image = "rbxassetid://3926305904"
	Close.ImageRectOffset = Vector2.new(924, 724)
	Close.ImageRectSize = Vector2.new(36, 36)

	Minimize.Name = "Minimize"
	Minimize.Parent = TopBar
	Minimize.BackgroundTransparency = 1.000
	Minimize.BorderSizePixel = 0
	Minimize.LayoutOrder = 6
	Minimize.Position = UDim2.new(0.85113883, 0, 0.0666666031, 0)
	Minimize.Size = UDim2.new(0.07217931, 0, 0.833333313, 0)
	Minimize.ZIndex = 25
	Minimize.Image = "rbxassetid://3926307971"
	Minimize.ImageRectOffset = Vector2.new(884, 284)
	Minimize.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint.Parent = TopBar
	UIAspectRatioConstraint.AspectRatio = 11.676

	TextLabel.Parent = TopBar
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.302607149, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0.570956886, 0, 0.966666639, 0)
	TextLabel.ZIndex = 25
	TextLabel.Font = Enum.Font.SourceSansLight
	TextLabel.Text = "Script Lib - Void"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	-- UI element code start
	--CloseUI
	Close.MouseButton1Click:Connect(function()
		VoidLib:Destroy()
	end)
	--Min
	Minimize.MouseButton1Click:Connect(function()
		TopBar.ClipsDescendants = not TopBar.ClipsDescendants
	end)
	
	--SearchBar
	local scroll = ButtonHolder -- CHANGE THIS TO YOUR SCROLLING FRAME
	local textBox = Searchbar -- CHANGE THIS TO YOUR TEXT BOX

	textBox.Changed:Connect(function() -- when the text is changed
		local text = textBox.Text:lower() -- lowercase search bar text
		if text ~= "" then -- if it has text
			local buttons = scroll:GetDescendants() -- all of the buttons
			for _, button in pairs(buttons) do -- loops through the buttons
				if button:IsA("TextButton") then -- if it's a button
					local buttonText = button.Text:lower() -- lowercase button text
					if string.find(buttonText, text) then -- if search bar text is found in the button's text
						button.Visible = true -- shows button
					else -- otherwise
						button.Visible = false -- hides button
					end
				end
			end
		else -- if it's empty
			local buttons = scroll:GetDescendants() -- all buttons
			for _, button in pairs(buttons) do -- loops through buttons
				if button:IsA("TextButton") then -- if it's a button
					button.Visible = true -- shows button
				end
			end
		end
	end)
	
	--UI Drag
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
	-- UI element code end
	local ButtonLibs = {}

	function ButtonLibs:CreateButton(ButtonName, ButtonTextLabel, callback)
		local callback = callback or function() end
		
		local Button = Instance.new("TextButton")
		
			Button.Name = ButtonName
			Button.Parent = ButtonHolder
			Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Button.BackgroundColor3 = Color3.fromRGB(13, 27, 42)
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0.00285714259, 0, 0.00526315812, 0)
			Button.Size = UDim2.new(1, 0, 0.1, 0)
			Button.ZIndex = 20
			Button.Font = Enum.Font.SourceSansLight
			Button.Text = ButtonTextLabel
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextScaled = true
			Button.TextSize = 14.000
			Button.TextWrapped = true
			--Button Function
			Button.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
		
	end
	return ButtonLibs
end-- End Of Main Func

return Library
