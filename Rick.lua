
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Настройки
local TELEPORT_RANGE = 50   -- Максимальная дистанция поиска
local COOLDOWN = 3          -- Задержка между телепортами (сек)

local canTeleport = true
local button = script.Parent

-- Визуальное отображение кулдауна
local function updateButtonText(seconds)
    if seconds > 0 then
        button.Text = "⏳ " .. seconds .. "с"
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    else
        button.Text = "🔫 Телепорт"
        button.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    end
end

-- Функция поиска ближайшего игрока
local function getNearestPlayer()
    local nearest = nil
    local minDist = TELEPORT_RANGE
    
    for _, otherPlayer in ipairs(Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherChar = otherPlayer.Character
            if otherChar and otherChar:FindFirstChild("HumanoidRootPart") then
                local otherPos = otherChar.HumanoidRootPart.Position
                local myPos = humanoidRootPart.Position
                local dist = (myPos - otherPos).Magnitude
                
                if dist < minDist then
                    minDist = dist
                    nearest = otherChar
                end
            end
        end
    end
    
    return nearest
end

-- Функция телепортации за спину
local function teleportBehind(targetChar)
    if not targetChar then return false end
    
    local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
    if not targetRoot then return false end
    
    -- Получаем направление взгляда цели
    local targetLookVector = targetRoot.CFrame.LookVector
    local behindPosition = targetRoot.Position - targetLookVector * 3
    behindPosition = behindPosition + Vector3.new(0, 2, 0)
    
    -- Телепортируем игрока
    humanoidRootPart.CFrame = CFrame.new(behindPosition)
    
    -- Эффект искр
    local attachment = Instance.new("Attachment")
    attachment.Parent = humanoidRootPart
    
    local particle = Instance.new("ParticleEmitter")
    particle.Parent = attachment
    particle.Texture = "rbxasset://textures/particles/sparkles_main.dds"
    particle.Lifetime = NumberRange.new(0.5)
    particle.Rate = 200
    particle.SpreadAngle = Vector2.new(360, 360)
    particle.VelocityInheritance = 0
    particle.Enabled = true
    
    task.wait(0.3)
    particle.Enabled = false
    task.wait(0.5)
    particle:Destroy()
    attachment:Destroy()
    
    return true
end

-- Обработка нажатия на кнопку
button.MouseButton1Click:Connect(function()
    if not canTeleport then
        print("Кулдаун!")
        return
    end
    
    canTeleport = false
    updateButtonText(COOLDOWN)
    
    local target = getNearestPlayer()
    if target then
        local success = teleportBehind(target)
        if success then
            print("Телепортировался за " .. target.Parent.Name)
            -- Визуальный фидбек
            button.Text = "✅ Готово!"
            task.wait(0.5)
        end
    else
        print("Игроков рядом нет")
        button.Text = "❌ Нет цели"
        task.wait(0.8)
    end
    
    -- Обратный отсчёт кулдауна
    for i = COOLDOWN - 1, 0, -1 do
        updateButtonText(i)
        task.wait(1)
    end
    
    canTeleport = true
    updateButtonText(0)
end)

-- Обновление персонажа при респавне
player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
end)

-- Инициализация кнопки
updateButtonText(0)
print("Кнопка телепорта загружена! Нажмите на неё.")
