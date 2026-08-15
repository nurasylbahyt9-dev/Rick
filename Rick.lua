local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")
local camera = workspace.CurrentCamera

-- Создаем интерфейс (ScreenGui)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TeleportGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Создаем белую кнопку
local button = Instance.new("TextButton")
button.Name = "TeleportButton"
button.Size = UDim2.new(0, 140, 0, 50)
button.Position = UDim2.new(0.5, -70, 0.8, -25)
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "Teleport Behind"
button.TextSize = 15
button.Font = Enum.Font.SourceSansBold
button.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8)
uiCorner.Parent = button

--------------------------------------------------------------------------------
-- ЛОГИКА ПЕРЕТАСКИВАНИЯ КНОПКИ (DRAGGABLE)
--------------------------------------------------------------------------------
local dragging = false
local dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	button.Position = UDim2.new(
		startPos.X.Scale, 
		startPos.X.Offset + delta.X, 
		startPos.Y.Scale, 
		startPos.Y.Offset + delta.Y
	)
end

button.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = button.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

button.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

--------------------------------------------------------------------------------
-- ПОИСК БЛИЖАЙШЕГО ИГРОКА
--------------------------------------------------------------------------------
local function getClosestPlayer()
	local myCharacter = localPlayer.Character
	if not myCharacter or not myCharacter:FindFirstChild("HumanoidRootPart") then
		return nil
	end

	local myPos = myCharacter.HumanoidRootPart.Position
	local closestPlayer = nil
	local shortestDistance = math.huge

	for _, otherPlayer in ipairs(Players:GetPlayers()) do
		if otherPlayer ~= localPlayer then
			local otherChar = otherPlayer.Character
			if otherChar and otherChar:FindFirstChild("HumanoidRootPart") and otherChar:FindFirstChildOfClass("Humanoid") then
				local humanoid = otherChar:FindFirstChildOfClass("Humanoid")
				if humanoid.Health > 0 then
					local distance = (otherChar.HumanoidRootPart.Position - myPos).Magnitude
					if distance < shortestDistance then
						shortestDistance = distance
						closestPlayer = otherPlayer
					end
				end
			end
		end
	end

	return closestPlayer
end

--------------------------------------------------------------------------------
-- ТЕЛЕПОРТАЦИЯ
--------------------------------------------------------------------------------
local isCooldown = false

button.MouseButton1Click:Connect(function()
	if isCooldown then return end
	isCooldown = true

	button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

	local myCharacter = localPlayer.Character
	if myCharacter and myCharacter:FindFirstChild("HumanoidRootPart") then
		local closestPlayer = getClosestPlayer()
		if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
			local myHRP = myCharacter.HumanoidRootPart
			local targetHRP = closestPlayer.Character.HumanoidRootPart

			-- 1. Позиция на 3 студа сзади, ориентация совпадает с ориентацией цели
			local targetCFrame = targetHRP.CFrame
			local teleportCFrame = targetCFrame * CFrame.new(0, 0, 3)

			-- 2. Телепортируем персонажа (теперь он точно смотрит в спину игроку)
			myHRP.CFrame = teleportCFrame

			-- 3. Ставим камеру сзади нашего персонажа и направляем её прямо на цель
			local camPosition = teleportCFrame * CFrame.new(0, 2, 4).Position
			camera.CFrame = CFrame.lookAt(camPosition, targetHRP.Position)
		end
	end

	task.wait(1)
	button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	isCooldown = false
end)
