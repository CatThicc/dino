_G.On = false
if game:GetService("CoreGui"):FindFirstChild("Dino") then
	game:GetService("CoreGui"):FindFirstChild("Dino"):Destroy()
end
local plr = game:GetService("Players").LocalPlayer
local whitelist  = {}
whitelist[plr.Name] = plr.Name
local StarterGui = game:GetService("StarterGui")
local plrw
if game:GetService("CoreGui"):FindFirstChild("DinoHealth") then
	game:GetService("CoreGui").DinoHealth:Destroy()
end
local DinoHealth = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Health = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Player = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")

DinoHealth.Name = "DinoHealth"
DinoHealth.Parent = game:GetService("CoreGui")

Frame.Name = "Frame"
Frame.Parent = DinoHealth
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.5, 0, 0, 0)
Frame.Size = UDim2.new(0, 180, 0, 91)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ImageTransparency = 0.800
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Health.Name = "Health"
Health.Parent = Frame
Health.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Health.BackgroundTransparency = 1.000
Health.Position = UDim2.new(-0.000911176205, 0, 0.499892056, 0)
Health.Size = UDim2.new(0, 180, 0, 45)
Health.Font = Enum.Font.GothamBlack
Health.Text = "<health>"
Health.TextColor3 = Color3.fromRGB(255, 255, 255)
Health.TextSize = 24.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = Health

Player.Name = "Player"
Player.Parent = Frame
Player.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Player.BackgroundTransparency = 1.000
Player.Position = UDim2.new(0.044, 0, 0.005, 0)
Player.Size = UDim2.new(0, 165, 0, 38)
Player.Font = Enum.Font.GothamBlack
Player.Text = "<player>"
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextScaled = true
Player.TextSize = 24.000
Player.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 189, 97)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(165, 149, 255))}
UIGradient_2.Parent = Player

local Dino = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local KillBackground = Instance.new("ImageLabel")
local Kill = Instance.new("TextButton")
local plrbox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local AutoBackground = Instance.new("ImageLabel")
local Autofarm = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local EatBackground = Instance.new("ImageLabel")
local Eat = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local DrinkBackground = Instance.new("ImageLabel")
local Drink = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local ExtraBackground = Instance.new("ImageLabel")
local PlayerTitle = Instance.new("TextLabel")
local Players = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Whitelisted = Instance.new("ScrollingFrame")
local UIListLayout2 = Instance.new("UIListLayout")
local WhitelistTitle = Instance.new("TextLabel")
local MoreOptions = Instance.new("TextButton")

--Properties:

Dino.Name = "Dino"
Dino.Parent = game:GetService("CoreGui")

Background.Name = "Background"
Background.Parent = Dino
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.Position = UDim2.new(0.480359882, 0, 0.431203902, 0)
Background.Size = UDim2.new(0, 267, 0, 111)
Background.Image = "rbxassetid://3570695787"
Background.ImageColor3 = Color3.fromRGB(45, 45, 45)
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(100, 100, 100, 100)
Background.SliceScale = 0.120

KillBackground.Name = "KillBackground"
KillBackground.Parent = Background
KillBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KillBackground.BackgroundTransparency = 1.000
KillBackground.Position = UDim2.new(0.0329218097, 0, 0.578524828, 0)
KillBackground.Size = UDim2.new(0, 84, 0, 25)
KillBackground.Image = "rbxassetid://3570695787"
KillBackground.ImageColor3 = Color3.fromRGB(30, 30, 30)
KillBackground.ScaleType = Enum.ScaleType.Slice
KillBackground.SliceCenter = Rect.new(100, 100, 100, 100)
KillBackground.SliceScale = 0.120

Kill.Name = "Kill"
Kill.Parent = KillBackground
Kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kill.BackgroundTransparency = 1.000
Kill.BorderSizePixel = 0
Kill.Size = UDim2.new(0, 83, 0, 24)
Kill.Font = Enum.Font.GothamSemibold
Kill.Text = "Kill Player"
Kill.TextColor3 = Color3.fromRGB(255, 255, 255)
Kill.TextSize = 14.000
Kill.MouseButton1Click:Connect(function()
	local cf = plr.Character.HumanoidRootPart.CFrame
	_G.On = false 
	_G.On = true 
	local found = false
	if plrbox.Text == "" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if not whitelist[v.Name] and not found then
				if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					if workspace.Dinosaurs:FindFirstChild(v.Character.Name) and workspace.Dinosaurs:FindFirstChild(v.Character.Name) == v.Character then
						plrw = v
						found = true
						local thumbType = Enum.ThumbnailType.HeadShot
						local thumbSize = Enum.ThumbnailSize.Size420x420
						local content = game:GetService("Players"):GetUserThumbnailAsync(v.UserId, thumbType, thumbSize)
						StarterGui:SetCore("SendNotification", {
							Title = "Targetting...";
							Text = v.Name.." is being targetted.";
							Icon = content
						})
					end
				end
			end
		end
	else
		local v = game:GetService("Players"):FindFirstChild(plrbox.Text)
		if not whitelist[v.Name] then
			if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
				if workspace.Dinosaurs:FindFirstChild(v.Character.Name) and workspace.Dinosaurs:FindFirstChild(v.Character.Name) == v.Character then
					plrw = v
					found = true
					local thumbType = Enum.ThumbnailType.HeadShot
					local thumbSize = Enum.ThumbnailSize.Size420x420
					local content = game:GetService("Players"):GetUserThumbnailAsync(v.UserId, thumbType, thumbSize)
					StarterGui:SetCore("SendNotification", {
						Title = "Targetting...";
						Text = v.Name.." is being targetted.";
						Icon = content
					})
				end
			end
		end
	end
	if plrw and plrw.Character then
		local args = {
			[1] = "Bite",
			[2] = {
				[game:GetService("Players")[plrw.Name].Character] = game:GetService("Players")[plrw.Name].Character
			}
		}
		local tcf = plrw.Character.PrimaryPart.CFrame - Vector3.new(0,40,0)
		Health.Text = tostring("...")
		Player.Text = tostring("Waiting")

		local function checkchar()
			if not plrw.Character and _G.On then
				Health.Text = tostring(0)
				Player.Text = tostring(plrw.Name)
				_G.On = false
			end
		end

		local wing = 0; local sith = 0
		if plrw.Character:FindFirstChild("WingLeft1") then
			wing = 5
		end
		if plrw.Character:FindFirstChild("SitHeight") and plrw.Character:FindFirstChild("SitHeight").Value > 5 then
			sith = 5
		end

		plr.Character:SetPrimaryPartCFrame(plrw.Character.PrimaryPart.CFrame - Vector3.new(-3,30,0))
		local i=0
		while true do
			if i >= 2 then break end
			wait(1)
			i = i + 1
			plr.Character:SetPrimaryPartCFrame(plrw.Character.HumanoidRootPart.CFrame - Vector3.new(-3,30,0))
		end
		while _G.On do
			checkchar()
			if plrw.Character ~= nil then
				Health.Text = tostring(math.floor(plrw.Character.Humanoid.Health + 0.5))
			end
			checkchar()
			if plrw.Character ~= nil then
				Player.Text = tostring(plrw.Name)
			end
			checkchar()
			if plrw.Character ~= nil then
				plr.Character:SetPrimaryPartCFrame(plrw.Character.PrimaryPart.CFrame - Vector3.new(0,15-wing+sith,0))
			end
			checkchar()
			if plrw.Character ~= nil then
				game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
			end
			checkchar()
			if plrw.Character ~= nil then
				game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
			end
			checkchar()
			wait(0.1)
			checkchar()
			if plrw.Character ~= nil then
				plr.Character:SetPrimaryPartCFrame(plrw.Character.PrimaryPart.CFrame - Vector3.new(0,15-wing+sith,0))
			end
			checkchar()
			if plrw.Character ~= nil then
				game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
			end
			if not _G.On then
				Health.Text = tostring(0)
				Player.Text = tostring("<player>")
				plr.Character:SetPrimaryPartCFrame(cf)
				break
			end
		end
	end
end)

plrbox.Name = "plrbox"
plrbox.Parent = KillBackground
plrbox.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
plrbox.BorderColor3 = Color3.fromRGB(31, 31, 31)
plrbox.BorderSizePixel = 2
plrbox.Position = UDim2.new(0.0476190485, 0, -1.25142825, 0)
plrbox.Size = UDim2.new(0, 75, 0, 24)
plrbox.Font = Enum.Font.GothamBlack
plrbox.PlaceholderText = "[random]"
plrbox.Text = ""
plrbox.TextColor3 = Color3.fromRGB(236, 236, 236)
plrbox.TextScaled = true
plrbox.TextSize = 14.000
plrbox.TextWrapped = true
plrbox.FocusLost:Connect(function()
	if plrbox.Text ~= "" then
		local s = plrbox.Text
		s = s:lower()
		for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
			if s == v.Name:lower():sub(1, #s) then
				plrbox.Text = v.Name
			end
		end
	end
end)

TextLabel.Parent = Background
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0864197537, 0, 0.0504201688, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 17)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Creatures of Sonaria"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

AutoBackground.Name = "AutoBackground"
AutoBackground.Parent = Background
AutoBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoBackground.BackgroundTransparency = 1.000
AutoBackground.Position = UDim2.new(0.630415678, 0, 0.29667154, 0)
AutoBackground.Size = UDim2.new(0, 84, 0, 25)
AutoBackground.Image = "rbxassetid://3570695787"
AutoBackground.ImageColor3 = Color3.fromRGB(30, 30, 30)
AutoBackground.ScaleType = Enum.ScaleType.Slice
AutoBackground.SliceCenter = Rect.new(100, 100, 100, 100)
AutoBackground.SliceScale = 0.120

Autofarm.Name = "Autofarm"
Autofarm.Parent = AutoBackground
Autofarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Autofarm.BackgroundTransparency = 1.000
Autofarm.BorderSizePixel = 0
Autofarm.Size = UDim2.new(0, 84, 0, 25)
Autofarm.Font = Enum.Font.GothamSemibold
Autofarm.Text = "Autofarm"
Autofarm.TextColor3 = Color3.fromRGB(255, 255, 255)
Autofarm.TextSize = 14.000

TextLabel_2.Parent = AutoBackground
TextLabel_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextLabel_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_2.BorderSizePixel = 3
TextLabel_2.Position = UDim2.new(0.0833333358, 0, 1.24000001, 0)
TextLabel_2.Size = UDim2.new(0, 70, 0, 25)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "OFF"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextSize = 14.000

EatBackground.Name = "EatBackground"
EatBackground.Parent = Background
EatBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EatBackground.BackgroundTransparency = 1.000
EatBackground.Position = UDim2.new(0.388726979, 0, 0.290236473, 0)
EatBackground.Size = UDim2.new(0, 58, 0, 25)
EatBackground.Image = "rbxassetid://3570695787"
EatBackground.ScaleType = Enum.ScaleType.Slice
EatBackground.SliceCenter = Rect.new(100, 100, 100, 100)
EatBackground.SliceScale = 0.120

Eat.Name = "Eat"
Eat.Parent = EatBackground
Eat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Eat.BackgroundTransparency = 1.000
Eat.BorderSizePixel = 0
Eat.Size = UDim2.new(0, 57, 0, 24)
Eat.Font = Enum.Font.GothamSemibold
Eat.Text = "Eat"
Eat.TextColor3 = Color3.fromRGB(0, 0, 0)
Eat.TextSize = 14.000
Eat.MouseButton1Click:Connect(function()
	local plr = game:GetService("Players").LocalPlayer
	local cf = plr.Character.HumanoidRootPart.CFrame
	local corpse = nil
	local ffound = false
	for i,v in pairs(workspace.Food:GetChildren()) do
		if v:FindFirstChild("Corpse") and not ffound then
			corpse = v
			ffound = true
		end
	end
	local args = {
		[1] = "eat",
		[2] = corpse.Corpse
	}
	local tim = 0
	spawn(function()
		while true do
			wait(1)
			tim = tim + 1
			if tim >= 2 then break end
		end
	end)
	spawn(function()
		while true do
			wait(0.1)

			plr.Character:SetPrimaryPartCFrame(corpse.Corpse.CFrame - Vector3.new(0,10,0))
			game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
			if tim >= 2 then 
				plr.Character:SetPrimaryPartCFrame(cf)
				break 
			end
		end
	end)
end)
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 158, 120)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(255, 223, 146)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 239, 200))}
UIGradient.Rotation = 37
UIGradient.Parent = EatBackground

DrinkBackground.Name = "DrinkBackground"
DrinkBackground.Parent = Background
DrinkBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DrinkBackground.BackgroundTransparency = 1.000
DrinkBackground.Position = UDim2.new(0.388726979, 0, 0.578524768, 0)
DrinkBackground.Size = UDim2.new(0, 58, 0, 25)
DrinkBackground.Image = "rbxassetid://3570695787"
DrinkBackground.ScaleType = Enum.ScaleType.Slice
DrinkBackground.SliceCenter = Rect.new(100, 100, 100, 100)
DrinkBackground.SliceScale = 0.120

Drink.Name = "Drink"
Drink.Parent = DrinkBackground
Drink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drink.BackgroundTransparency = 1.000
Drink.BorderSizePixel = 0
Drink.Size = UDim2.new(0, 57, 0, 24)
Drink.Font = Enum.Font.GothamSemibold
Drink.Text = "Drink"
Drink.TextColor3 = Color3.fromRGB(0, 0, 0)
Drink.TextSize = 14.000
Drink.MouseButton1Click:Connect(function()
	local cf = plr.Character.HumanoidRootPart.CFrame
	local water = workspace.Water.Model.Part

	local args = {
		[1] = "drink",
		[2] = water
	}

	local tim = 0
	spawn(function()
		while true do
			wait(1)
			tim = tim + 1
			if tim >= 2 then break end
		end
	end)
	spawn(function()
		while true do
			wait(0.1)

			plr.Character:SetPrimaryPartCFrame(water.CFrame - Vector3.new(0,10,0))
			game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
			if tim >= 2 then 
				plr.Character:SetPrimaryPartCFrame(cf)
				break 
			end
		end
	end)
end)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 254, 255)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(128, 183, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(127, 101, 255))}
UIGradient_2.Rotation = 27
UIGradient_2.Parent = DrinkBackground

ExtraBackground.Name = "ExtraBackground"
ExtraBackground.Parent = Background
ExtraBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtraBackground.BackgroundTransparency = 1.000
ExtraBackground.Position = UDim2.new(0.041, 0, 0.102, 0)
ExtraBackground.Size = UDim2.new(0, 241, 0, 88)
ExtraBackground.ZIndex = 0
ExtraBackground.Image = "rbxassetid://3570695787"
ExtraBackground.ImageColor3 = Color3.fromRGB(39, 39, 39)
ExtraBackground.ScaleType = Enum.ScaleType.Slice
ExtraBackground.SliceCenter = Rect.new(100, 100, 100, 100)
ExtraBackground.SliceScale = 0.120

PlayerTitle.Name = "PlayerTitle"
PlayerTitle.Parent = ExtraBackground
PlayerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerTitle.BackgroundTransparency = 1.000
PlayerTitle.Position = UDim2.new(0.0373443998, 0, 0.0852713287, 0)
PlayerTitle.Size = UDim2.new(0, 92, 0, 23)
PlayerTitle.ZIndex = 0
PlayerTitle.Font = Enum.Font.GothamBlack
PlayerTitle.Text = "Players"
PlayerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerTitle.TextSize = 14.000
PlayerTitle.TextTransparency = 1

Players.Name = "Players"
Players.Parent = ExtraBackground
Players.Active = true
Players.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Players.BackgroundTransparency = 1.000
Players.BorderColor3 = Color3.fromRGB(203, 203, 203)
Players.Position = UDim2.new(0.0484515801, 0, 0.256079793, 0)
Players.Size = UDim2.new(0, 0, 0, 0)
Players.ZIndex = 0
Players.BorderSizePixel = 0
Players.ScrollBarThickness = 8

UIListLayout.Name = "UIListLayout"
UIListLayout.Parent = Players
UIListLayout.Padding = UDim.new(0, 1)

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
	if v ~= game:GetService("Players").LocalPlayer then
		local TextButton = Instance.new("TextButton")
		TextButton.Name = v.Name
		TextButton.Parent = Players
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1.000
		TextButton.Size = UDim2.new(0, 70, 0, 19)
		TextButton.ZIndex = 0
		TextButton.Font = Enum.Font.Gotham
		TextButton.Text = v.Name
		TextButton.TextColor3 = Color3.fromRGB(211, 211, 211)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
	end
end
local csd = -3.2
Players.CanvasSize = UDim2.new(0, 0, csd+(0.8*#Players:GetChildren()), 0)

game:GetService("Players").PlayerAdded:Connect(function(v)
	local TextButton = Instance.new("TextButton")
	TextButton.Name = v.Name
	TextButton.Parent = Players
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.Size = UDim2.new(0, 70, 0, 19)
	TextButton.ZIndex = 0
	TextButton.Font = Enum.Font.Gotham
	TextButton.Text = v.Name
	TextButton.TextColor3 = Color3.fromRGB(211, 211, 211)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true
	Players.CanvasSize = UDim2.new(0, 0, Players.CanvasSize.Y.Scale + 0.8, 0, 0)
	TextButton.MouseButton1Click:Connect(function()
		if TextButton.Parent == Players then
			local thumbType = Enum.ThumbnailType.HeadShot
			local thumbSize = Enum.ThumbnailSize.Size420x420
			local content = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players")[v.Name].UserId, thumbType, thumbSize)
			whitelist[TextButton.Name] = TextButton.Name
			StarterGui:SetCore("SendNotification", {
				Title = "Whitelisted";
				Text = TextButton.Name.." has been added to the whitelist.";
				Icon = tostring(content)
			})
			Players.CanvasSize = UDim2.new(0, 0, Players.CanvasSize.Y.Scale - 0.8, 0, 0)
			Whitelisted.CanvasSize = UDim2.new(0, 0, Whitelisted.CanvasSize.Y.Scale + 0.8, 0, 0)
			TextButton.Parent = Whitelisted
			end
		end)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	if Players:FindFirstChild(v.Name) then
		Players:FindFirstChild(v.Name):Destroy()
		Players.CanvasSize = UDim2.new(0, 0, Players.CanvasSize.Y.Scale - 0.8, 0, 0)
	end
	if Whitelisted:FindFirstChild(v.Name) then
		Whitelisted:FindFirstChild(v.Name):Destroy()
		Whitelisted.CanvasSize = UDim2.new(0, 0, Whitelisted.CanvasSize.Y.Scale - 0.8, 0, 0)
	end
end)

for _,v in pairs(Players:GetChildren()) do
	if not v:IsA("UIListLayout") then
		v.MouseButton1Click:Connect(function()
			if v.Parent == Players then
			local thumbType = Enum.ThumbnailType.HeadShot
			local thumbSize = Enum.ThumbnailSize.Size420x420
			local content = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players")[v.Name].UserId, thumbType, thumbSize)
			whitelist[v.Name] = v.Name
			StarterGui:SetCore("SendNotification", {
				Title = "Whitelisted";
				Text = v.Name.." has been added to the whitelist.";
				Icon = tostring(content)
			})
			Players.CanvasSize = UDim2.new(0, 0, Players.CanvasSize.Y.Scale - 0.8, 0, 0)
			Whitelisted.CanvasSize = UDim2.new(0, 0, Whitelisted.CanvasSize.Y.Scale + 0.8, 0, 0)
				v.Parent = Whitelisted
			else
				local thumbType = Enum.ThumbnailType.HeadShot
				local thumbSize = Enum.ThumbnailSize.Size420x420
				local content = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players")[v.Name].UserId, thumbType, thumbSize)
				whitelist[v.Name] = nil
				StarterGui:SetCore("SendNotification", {
					Title = "Unwhitelisted";
					Text = v.Name.." has been removed from the whitelist.";
					Icon = content
				})
				Whitelisted.CanvasSize = UDim2.new(0, 0, Whitelisted.CanvasSize.Y.Scale - 0.8, 0, 0)
				Players.CanvasSize = UDim2.new(0, 0, Players.CanvasSize.Y.Scale + 0.8, 0, 0)
				v.Parent = Players
			end
		end)
	end
end

Whitelisted.Name = "Whitelisted"
Whitelisted.Parent = ExtraBackground
Whitelisted.Active = true
Whitelisted.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Whitelisted.BackgroundTransparency = 1.000
Whitelisted.BorderColor3 = Color3.fromRGB(203, 203, 203)
Whitelisted.Position = UDim2.new(0.56712383, 0, 0.256079793, 0)
Whitelisted.Size = UDim2.new(0, 0, 0, 0)
Whitelisted.ZIndex = 0
Whitelisted.BorderSizePixel = 0
Whitelisted.ScrollBarThickness = 8

UIListLayout2.Name = "UIListLayout"
UIListLayout2.Parent = Whitelisted
UIListLayout2.Padding = UDim.new(0, 1)

local csd = -3.2
Whitelisted.CanvasSize = UDim2.new(0, 0, csd+(0.8*#Whitelisted:GetChildren()), 0)

WhitelistTitle.Name = "WhitelistTitle"
WhitelistTitle.Parent = ExtraBackground
WhitelistTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhitelistTitle.BackgroundTransparency = 1.000
WhitelistTitle.Position = UDim2.new(0.556016624, 0, 0.0852713287, 0)
WhitelistTitle.Size = UDim2.new(0, 92, 0, 23)
WhitelistTitle.ZIndex = 0
WhitelistTitle.Font = Enum.Font.GothamBlack
WhitelistTitle.Text = "Whitelist"
WhitelistTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
WhitelistTitle.TextSize = 14.000
WhitelistTitle.TextTransparency = 1

MoreOptions.Parent = Background
MoreOptions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MoreOptions.BackgroundTransparency = 1.000
MoreOptions.Position = UDim2.new(0.882723331, 0, 0.0565110445, 0)
MoreOptions.Rotation = 270.000
MoreOptions.Size = UDim2.new(0, 21, 0, 21)
MoreOptions.Font = Enum.Font.GothamBold
MoreOptions.Text = ">"
MoreOptions.TextColor3 = Color3.fromRGB(255, 255, 255)
MoreOptions.TextSize = 26.000
local extended = false
MoreOptions.MouseButton1Click:Connect(function()
	local tweenInfo = TweenInfo.new(
		0.1,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.Out
	)
	if extended then
		spawn(function()
			local tween = game:GetService("TweenService"):Create(MoreOptions, tweenInfo, {Rotation = 90})
			tween:Play()
		end)
		spawn(function()
			ExtraBackground:TweenPosition(UDim2.new(0.041, 0, 0.102, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5)
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(PlayerTitle, tweenInfo, {TextTransparency = 1})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(WhitelistTitle, tweenInfo, {TextTransparency = 1})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(Players, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(Whitelisted, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)})
			tween:Play()
		end)
		ExtraBackground:TweenSize(UDim2.new(0, 241, 0, 88), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2)
		extended = false
	else -------------------------------------------------
		spawn(function()
			local tween = game:GetService("TweenService"):Create(MoreOptions, tweenInfo, {Rotation = 270})
			tween:Play()
		end)
		spawn(function()
			ExtraBackground:TweenPosition(UDim2.new(0.0408428051, 0, 0.895253479, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5)
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(PlayerTitle, tweenInfo, {TextTransparency = 0})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(WhitelistTitle, tweenInfo, {TextTransparency = 0})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(Players, tweenInfo, {Size = UDim2.new(0, 88, 0, 88)})
			tween:Play()
		end)
		spawn(function()
			local tween = game:GetService("TweenService"):Create(Whitelisted, tweenInfo, {Size = UDim2.new(0, 88, 0, 88)})
			tween:Play()
		end)
		ExtraBackground:TweenSize(UDim2.new(0, 241, 0, 129), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2)
		extended = true
	end
end)

function dragify(Frame)
	dragToggle = nil
	dragSpeed = .25 -- You can edit this.
	dragInput = nil
	dragStart = nil
	dragPos = nil

	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end
dragify(Background)
