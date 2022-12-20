local Keystrokes = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local W = Instance.new("TextLabel")
local S = Instance.new("TextLabel")
local A = Instance.new("TextLabel")
local D = Instance.new("TextLabel")
local Space = Instance.new("TextLabel")
local MouseButton1 = Instance.new("TextLabel")
local MouseButton2 = Instance.new("TextLabel")
local CPS = Instance.new("TextLabel")
local FPS = Instance.new("TextLabel")

if syn and syn.protect_gui then
	syn.protect_gui(Keystrokes)
end

--Properties:

Keystrokes.Name = "Keystrokes"
Keystrokes.Parent = (gethui and gethui()) or (get_hidden_ui and get_hidden_ui()) or game.CoreGui
Keystrokes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Keystrokes
Main.Active = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.97, 0, -0.08, 0)
Main.Size = UDim2.new(0, 110, 0, 207)

FPS.Name = "FPS"
FPS.Parent = Main
FPS.AnchorPoint = Vector2.new(0.5, 0)
FPS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPS.BackgroundTransparency = 0.600
FPS.BorderSizePixel = 0
FPS.Position = UDim2.new(0.5, 0, 0, 172)
FPS.Size = UDim2.new(0, 110, 0, 25)
FPS.Font = Enum.Font.Gotham
FPS.Text = "0 FPS"
FPS.TextColor3 = Color3.fromRGB(255, 255, 255)
FPS.TextSize = 16.000

-- Scripts:

local function YAZCKSA_fake_script() -- Keystrokes.LocalScript 
	local script = Instance.new('LocalScript', Keystrokes)

	local UIS = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local FPS = 0
	
	script.Parent.Main.Draggable = true
	
	UIS.InputEnded:Connect(function(i,gp)
		local input = (i.UserInputType.Name == "Keyboard" and "KeyCode") or (i.KeyCode.Name == "Unknown" and "UserInputType")
		if not gp and script.Parent.Main:FindFirstChild(i[input].Name) then
			TweenService:Create(script.Parent.Main[i[input].Name],TweenInfo.new(0.15,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{BackgroundColor3 = Color3.fromRGB(0,0,0),TextColor3 = Color3.fromRGB(255,255,255)}):Play()
		end
	end)
	RunService.RenderStepped:Connect(function()
		spawn(function()
			FPS += 1
			wait(1)
			FPS -= 1
		end)
		script.Parent.Main.FPS.Text = FPS.." FPS"
	end)
end
coroutine.wrap(YAZCKSA_fake_script)()
