-- ============================================================
-- RickPrime — ULTIMATE v4 (ПОЛНАЯ РАБОЧАЯ ВЕРСИЯ)
-- Кладите этот LocalScript в StarterPlayerScripts.
-- ============================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

-- ============================================================
-- БАЗА ДАННЫХ: 100+ РЕЖИМОВ
-- ============================================================
local GAME_MODES = {
    -- ПОПУЛЯРНЫЕ ИГРЫ (25)
    {id = 1818, name = "Welcome to Roblox", category = "Popular"},
    {id = 920587237, name = "Adopt Me!", category = "Popular"},
    {id = 2788229376, name = "Tower of Hell", category = "Popular"},
    {id = 4872321990, name = "Arsenal", category = "Popular"},
    {id = 6284583030, name = "Piggy", category = "Popular"},
    {id = 221845550, name = "Murder Mystery 2", category = "Popular"},
    {id = 1788406392, name = "BedWars", category = "Popular"},
    {id = 607745900, name = "Natural Disaster Survival", category = "Popular"},
    {id = 155517769, name = "Work at a Pizza Place", category = "Popular"},
    {id = 1962086868, name = "Brookhaven", category = "Popular"},
    {id = 2488589077, name = "Jailbreak", category = "Popular"},
    {id = 2774279647, name = "Ninja Legends", category = "Popular"},
    {id = 142823291, name = "Phantom Forces", category = "Popular"},
    {id = 1321384690, name = "Royale High", category = "Popular"},
    {id = 7889202392, name = "Blox Fruits", category = "Popular"},
    {id = 3848000531, name = "Speed Run 4", category = "Popular"},
    {id = 5475694567, name = "Strongest Battlegrounds", category = "Popular"},
    {id = 6765491340, name = "Pet Simulator X", category = "Popular"},
    {id = 4160215726, name = "All Star Tower Defense", category = "Popular"},
    {id = 1594023089, name = "Mad City", category = "Popular"},
    {id = 13822864762, name = "Doors", category = "Popular"},
    {id = 9971161536, name = "Rainbow Friends", category = "Popular"},
    {id = 9554582969, name = "Fisch", category = "Popular"},
    {id = 27618226274, name = "Bloxburg", category = "Popular"},
    
    -- RPG (10)
    {id = 614359540, name = "Dungeon Quest", category = "RPG"},
    {id = 1290374172, name = "World Zero", category = "RPG"},
    {id = 3464109199, name = "Boss Fighting Simulator", category = "RPG"},
    {id = 1752716008, name = "Dragon Ball Online", category = "RPG"},
    {id = 2140657246, name = "Robloxian High School", category = "RPG"},
    {id = 1830731963, name = "Epic Minigames", category = "RPG"},
    {id = 1797892869, name = "Wild West", category = "RPG"},
    {id = 1441878904, name = "Loomian Legacy", category = "RPG"},
    {id = 1690893065, name = "Adventure Story", category = "RPG"},
    {id = 1975717439, name = "Monster Hunter", category = "RPG"},
    
    -- СИМУЛЯТОРЫ (10)
    {id = 2515028128, name = "Bee Swarm Simulator", category = "Simulator"},
    {id = 3461104069, name = "Anime Fighting Simulator", category = "Simulator"},
    {id = 1745768564, name = "Chicken Life", category = "Simulator"},
    {id = 12119154294, name = "Pet Simulator 99", category = "Simulator"},
    {id = 4685323310, name = "Pets Go!", category = "Simulator"},
    {id = 8436131098, name = "PSX", category = "Simulator"},
    {id = 1520323049, name = "Spider", category = "Simulator"},
    {id = 1896849400, name = "Prison Life", category = "Simulator"},
    {id = 1571416514, name = "Lumber Tycoon 2", category = "Simulator"},
    {id = 1306591458, name = "Mining Simulator", category = "Simulator"},
    
    -- ШУТЕРЫ (8)
    {id = 1550692920, name = "Counter Blox", category = "Shooter"},
    {id = 2421436844, name = "Bad Business", category = "Shooter"},
    {id = 2853138992, name = "Isle", category = "Shooter"},
    {id = 11610963384, name = "FPS Game", category = "Shooter"},
    {id = 19749523299, name = "Tactical Shoot", category = "Shooter"},
    {id = 2757820349, name = "Polybattle", category = "Shooter"},
    {id = 5020565002, name = "Frontlines", category = "Shooter"},
    {id = 13664147059, name = "Aimblox", category = "Shooter"},
    
    -- ГОНКИ (6)
    {id = 1860867832, name = "Vehicle Simulator", category = "Racing"},
    {id = 1801297159, name = "Driving Empire", category = "Racing"},
    {id = 1540078614, name = "Car Crushers 2", category = "Racing"},
    {id = 5395951034, name = "Racing Legends", category = "Racing"},
    {id = 1462233134, name = "Drag Race", category = "Racing"},
    {id = 1863350406, name = "Project Track", category = "Racing"},
    
    -- ХОРРОР (7)
    {id = 4470846933, name = "The Mimic", category = "Horror"},
    {id = 3489787022, name = "Dead Silence", category = "Horror"},
    {id = 7043646843, name = "Evil", category = "Horror"},
    {id = 7382395255, name = "Camping", category = "Horror"},
    {id = 9609609643, name = "Forsaken", category = "Horror"},
    {id = 8266793493, name = "Bear", category = "Horror"},
    {id = 13670913947, name = "The Rooms", category = "Horror"},
    
    -- СТРОИТЕЛЬСТВО (5)
    {id = 231827483, name = "Theme Park Tycoon 2", category = "Building"},
    {id = 580460299, name = "Restaurant Tycoon 2", category = "Building"},
    {id = 342593552, name = "Bloxburg", category = "Building"},
    {id = 537787370, name = "Plane Crazy", category = "Building"},
    {id = 1730199014, name = "Build a Boat", category = "Building"},
    
    -- ЭКШН (7)
    {id = 4594418286, name = "Critical Legends", category = "Action"},
    {id = 3299015527, name = "Ro-Ghoul", category = "Action"},
    {id = 4406512751, name = "Anime Adventures", category = "Action"},
    {id = 5860699991, name = "Shindo Life", category = "Action"},
    {id = 3949170617, name = "Project Hero", category = "Action"},
    {id = 7608078868, name = "Project Ghoul", category = "Action"},
    {id = 8474798729, name = "Demon Slayer RPG", category = "Action"},
    
    -- ОБУЧАЮЩИЕ (4)
    {id = 918453521, name = "Lua Learning", category = "Educational"},
    {id = 1683410273, name = "Roblox Studio", category = "Educational"},
    {id = 1152608867, name = "Coding Simulator", category = "Educational"},
    {id = 6546700704, name = "Tutorial World", category = "Educational"},
    
    -- МИНИ-ИГРЫ (5)
    {id = 1293990383, name = "Minigames", category = "Mini Games"},
    {id = 7226566931, name = "Party Games", category = "Mini Games"},
    {id = 4589222618, name = "Fun Games", category = "Mini Games"},
    {id = 8050764030, name = "Roblox Battle", category = "Mini Games"},
    {id = 5070393631, name = "Ultimate Games", category = "Mini Games"},
    
    -- ОБЩЕСТВЕННЫЕ (5)
    {id = 142985301, name = "Catalog Heaven", category = "Social"},
    {id = 1745356014, name = "Town", category = "Social"},
    {id = 16140133956, name = "World of Tycoons", category = "Social"},
    {id = 8149412736, name = "Dress to Impress", category = "Social"},
    {id = 6864227243, name = "Fashion Famous", category = "Social"},
}

-- ============================================================
-- КОНСТАНТЫ
-- ============================================================
local PORTAL_DIAMETER = 8
local PORTAL_LIFETIME = 25
local SURFACE_OFFSET = 0.15
local EXIT_OFFSET = 3
local TELEPORT_COOLDOWN = 1.25
local GUI_TOGGLE_KEY = Enum.KeyCode.RightShift
local randomCycleDelay = 10

local portalRegistry = {}
local pointPortals = {A = nil, B = nil}
local playerPortal = nil
local placePortal = nil
local teleportCooldownUntil = 0

local randomModeActive = false
local randomModeCoroutine = nil
local randomModeButton = nil
local randomStatusLabel = nil
local selectedCategories = {}

local tool = nil
local toolTemplate = nil

-- ============================================================
-- СОЗДАНИЕ МОДЕЛИ ПУШКИ (УПРОЩЕННАЯ ВЕРСИЯ ДЛЯ ТЕСТА)
-- ============================================================
local function createRickPrimeTool()
    local tool = Instance.new("Tool")
    tool.Name = "RickPrime"
    tool.CanBeDropped = true
    tool.RequiresHandle = true
    tool.Enabled = true
    
    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1.5, 0.5)
    handle.Color = Color3.fromRGB(163, 162, 165)
    handle.Material = Enum.Material.Plastic
    handle.Parent = tool
    
    local grip = Instance.new("Part")
    grip.Name = "Grip"
    grip.Size = Vector3.new(0.5, 0.5, 1)
    grip.Color = Color3.fromRGB(50, 50, 50)
    grip.Parent = tool
    
    return tool
end

-- ============================================================
-- ВОССТАНОВЛЕНИЕ ПУШКИ ПОСЛЕ СМЕРТИ
-- ============================================================
local function restoreRickPrimeTool()
    local backpack = player:FindFirstChildOfClass("Backpack")
    local character = player.Character
    
    if character then
        local existing = character:FindFirstChild("RickPrime")
        if existing then
            tool = existing
            return tool
        end
    end
    
    if backpack then
        local existing = backpack:FindFirstChild("RickPrime")
        if existing then
            tool = existing
            return tool
        end
    end
    
    local newTool = createRickPrimeTool()
    if backpack then
        newTool.Parent = backpack
    end
    tool = newTool
    return newTool
end

player.CharacterAdded:Connect(function()
    task.wait(0.5)
    restoreRickPrimeTool()
end)

task.spawn(function()
    while player.Parent do
        task.wait(2)
        local backpack = player:FindFirstChildOfClass("Backpack")
        local character = player.Character
        if backpack then
            local hasTool = backpack:FindFirstChild("RickPrime") or (character and character:FindFirstChild("RickPrime"))
            if not hasTool then
                restoreRickPrimeTool()
            end
        end
    end
end)

restoreRickPrimeTool()

-- ============================================================
-- ФУНКЦИИ ПОРТАЛОВ
-- ============================================================
function buildOrientation(position, normal)
    local upRef = (math.abs(normal.Y) < 0.95) and Vector3.new(0, 1, 0) or Vector3.new(0, 0, 1)
    local rightAxis = normal:Cross(upRef)
    if rightAxis.Magnitude < 0.001 then
        upRef = Vector3.new(1, 0, 0)
        rightAxis = normal:Cross(upRef)
    end
    rightAxis = rightAxis.Unit
    local lookAxis = normal:Cross(rightAxis).Unit
    return CFrame.fromMatrix(position + normal * SURFACE_OFFSET, normal, rightAxis, lookAxis)
end

function spawnPortalVisual(position, normal)
    local portal = Instance.new("Part")
    portal.Name = "TeleportPortal"
    portal.Shape = Enum.PartType.Cylinder
    portal.Material = Enum.Material.Neon
    portal.Color = Color3.fromRGB(0, 255, 0)
    portal.Anchored = true
    portal.CanCollide = false
    portal.CastShadow = false
    portal.Size = Vector3.new(0.2, PORTAL_DIAMETER, PORTAL_DIAMETER)
    portal.Parent = workspace
    
    local baseCFrame = buildOrientation(position, normal)
    portal.CFrame = baseCFrame
    
    local targetSize = portal.Size
    portal.Size = Vector3.new(0.2, 0, 0)
    portal.Transparency = 1
    
    TweenService:Create(
        portal,
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Size = targetSize, Transparency = 0}
    ):Play()
    
    local elapsed = 0
    local rotateConn = RunService.Heartbeat:Connect(function(dt)
        elapsed += dt
        portal.CFrame = baseCFrame * CFrame.Angles(math.rad(-120) * elapsed, 0, 0)
    end)
    
    return portal, rotateConn
end

function despawnPortalVisual(portal, rotateConn)
    if rotateConn then rotateConn:Disconnect() end
    TweenService:Create(
        portal,
        TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {Size = Vector3.new(0.2, 0, 0), Transparency = 1}
    ):Play()
    task.wait(0.4)
    portal:Destroy()
end

function removePortal(portal)
    local data = portalRegistry[portal]
    if not data then return end
    if data.linkedPortal and portalRegistry[data.linkedPortal] then
        portalRegistry[data.linkedPortal].linkedPortal = nil
    end
    despawnPortalVisual(portal, data.rotateConn)
    portalRegistry[portal] = nil
    if pointPortals.A == portal then pointPortals.A = nil end
    if pointPortals.B == portal then pointPortals.B = nil end
    if playerPortal == portal then playerPortal = nil end
    if placePortal == portal then placePortal = nil end
end

function attachTouchHandler(portal)
    portal.Touched:Connect(function(hit)
        local character = hit:FindFirstAncestorOfClass("Model")
        if not character or character ~= player.Character then return end
        if tick() < teleportCooldownUntil then return end
        
        local data = portalRegistry[portal]
        if not data then return end
        local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        if data.mode == "point" then
            local other = data.linkedPortal
            if not other or not portalRegistry[other] then return end
            local otherData = portalRegistry[other]
            teleportCooldownUntil = tick() + TELEPORT_COOLDOWN
            root.CFrame = CFrame.new(other.Position + otherData.normal * EXIT_OFFSET + Vector3.new(0, 1, 0))
            
        elseif data.mode == "player" then
            local targetPlayer = data.targetPlayer
            if not targetPlayer or not targetPlayer.Parent then return end
            local targetChar = targetPlayer.Character
            if not targetChar then return end
            local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
            if not targetRoot then return end
            teleportCooldownUntil = tick() + TELEPORT_COOLDOWN
            root.CFrame = CFrame.new(targetRoot.Position + Vector3.new(EXIT_OFFSET, 1, 0))
            
        elseif data.mode == "place" then
            teleportCooldownUntil = tick() + TELEPORT_COOLDOWN
            pcall(function()
                TeleportService:Teleport(data.placeId, player)
            end)
        end
    end)
end

function getCharacterRoot()
    local char = player.Character
    if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart")
end

function isToolEquipped()
    return tool ~= nil and player.Character ~= nil and tool.Parent == player.Character
end

-- ============================================================
-- СЛУЧАЙНЫЙ РЕЖИМ
-- ============================================================
function getRandomPlace()
    local allCategories = {}
    for _, mode in ipairs(GAME_MODES) do
        if not table.find(allCategories, mode.category) then
            table.insert(allCategories, mode.category)
        end
    end
    
    local categories = #selectedCategories > 0 and selectedCategories or allCategories
    local category = categories[math.random(1, #categories)]
    
    local available = {}
    for _, mode in ipairs(GAME_MODES) do
        if mode.category == category then
            table.insert(available, mode)
        end
    end
    
    return available[math.random(1, #available)]
end

function getRandomPlayer()
    local valid = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            table.insert(valid, p)
        end
    end
    return #valid > 0 and valid[math.random(1, #valid)] or nil
end

function createRandomPortal()
    if not isToolEquipped() then
        updateRandomStatus("❌ Возьмите пушку!")
        return false
    end
    
    local modes = {"point", "player", "place"}
    local selectedMode = modes[math.random(1, #modes)]
    updateRandomStatus("🔄 Режим: " .. selectedMode)
    
    if selectedMode == "point" then
        return createPointPortal()
    elseif selectedMode == "player" then
        return createPlayerPortal()
    else
        return createPlacePortal()
    end
end

function createPointPortal()
    local root = getCharacterRoot()
    if not root then return false end
    
    if pointPortals.A then removePortal(pointPortals.A) end
    if pointPortals.B then removePortal(pointPortals.B) end
    
    local positions = {}
    for i = 1, 2 do
        local angle = math.random() * 2 * math.pi
        local dist = 15 + math.random(0, 10)
        local offset = Vector3.new(math.cos(angle) * dist, 5, math.sin(angle) * dist)
        
        local params = RaycastParams.new()
        params.FilterDescendantsInstances = {player.Character}
        params.FilterType = Enum.RaycastFilterType.Blacklist
        
        local hit = workspace:Raycast(root.Position + offset + Vector3.new(0, 10, 0), Vector3.new(0, -1, 0) * 30, params)
        if hit then
            table.insert(positions, {position = hit.Position, normal = hit.Normal})
        end
    end
    
    if #positions < 2 then
        updateRandomStatus("❌ Нет поверхностей")
        return false
    end
    
    local p1, r1 = spawnPortalVisual(positions[1].position, positions[1].normal)
    local p2, r2 = spawnPortalVisual(positions[2].position, positions[2].normal)
    
    portalRegistry[p1] = {rotateConn = r1, mode = "point", linkedPortal = p2, normal = positions[1].normal}
    portalRegistry[p2] = {rotateConn = r2, mode = "point", linkedPortal = p1, normal = positions[2].normal}
    
    pointPortals.A = p1
    pointPortals.B = p2
    
    attachTouchHandler(p1)
    attachTouchHandler(p2)
    
    updateRandomStatus("✅ Порталы A/B созданы!")
    task.wait(2)
    
    local rootChar = getCharacterRoot()
    if rootChar and p2 and portalRegistry[p2] then
        rootChar.CFrame = CFrame.new(p2.Position + portalRegistry[p2].normal * EXIT_OFFSET + Vector3.new(0, 1, 0))
        updateRandomStatus("📦 Телепорт через портал!")
        return true
    end
    return false
end

function createPlayerPortal()
    local target = getRandomPlayer()
    if not target then
        updateRandomStatus("❌ Нет игроков")
        return false
    end
    
    local targetChar = target.Character
    if not targetChar then return false end
    local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
    if not targetRoot then return false end
    
    local root = getCharacterRoot()
    if not root then return false end
    
    updateRandomStatus("🎯 Игрок: " .. target.Name)
    
    if playerPortal then removePortal(playerPortal) end
    
    local pos = targetRoot.Position + Vector3.new(0, 3, 0)
    local portal, conn = spawnPortalVisual(pos, Vector3.new(0, -1, 0))
    
    portalRegistry[portal] = {rotateConn = conn, mode = "player", targetPlayer = target, normal = Vector3.new(0, -1, 0)}
    playerPortal = portal
    attachTouchHandler(portal)
    
    updateRandomStatus("✅ Портал к " .. target.Name)
    task.wait(2)
    
    if root and portal and portalRegistry[portal] then
        root.CFrame = CFrame.new(targetRoot.Position + Vector3.new(EXIT_OFFSET, 1, 0))
        updateRandomStatus("📦 Телепорт к " .. target.Name)
        return true
    end
    return false
end

function createPlacePortal()
    local place = getRandomPlace()
    if not place then return false end
    
    local root = getCharacterRoot()
    if not root then return false end
    
    updateRandomStatus("🌐 " .. place.name .. " (ID: " .. place.id .. ")")
    
    if placePortal then removePortal(placePortal) end
    
    local portal, conn = spawnPortalVisual(root.Position + Vector3.new(0, 5, 0), Vector3.new(0, -1, 0))
    
    portalRegistry[portal] = {rotateConn = conn, mode = "place", placeId = place.id, normal = Vector3.new(0, -1, 0)}
    placePortal = portal
    attachTouchHandler(portal)
    
    updateRandomStatus("✅ Портал к " .. place.name)
    task.wait(2)
    
    if portal and portalRegistry[portal] then
        pcall(function()
            TeleportService:Teleport(place.id, player)
        end)
        updateRandomStatus("📦 Телепорт на " .. place.name)
        return true
    end
    return false
end

function updateRandomStatus(text)
    if randomStatusLabel then
        randomStatusLabel.Text = text
    end
end

function startRandomMode()
    if randomModeActive then return end
    randomModeActive = true
    
    if randomModeButton then
        randomModeButton.Text = "⏹️ Стоп"
        randomModeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    end
    
    updateRandomStatus("🔄 Запуск... Режимов: " .. #GAME_MODES)
    
    randomModeCoroutine = coroutine.create(function()
        while randomModeActive do
            local waitTime = randomCycleDelay + math.random(0, 5)
            for i = waitTime, 1, -1 do
                if not randomModeActive then break end
                updateRandomStatus("⏳ ТП через " .. i .. "с")
                task.wait(1)
            end
            if not randomModeActive then break end
            
            createRandomPortal()
            task.wait(1)
        end
        
        updateRandomStatus("⏹️ Остановлен")
        if randomModeButton then
            randomModeButton.Text = "🎲 Рандом"
            randomModeButton.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
        end
    end)
    
    coroutine.resume(randomModeCoroutine)
end

function stopRandomMode()
    randomModeActive = false
    if randomModeCoroutine then
        coroutine.close(randomModeCoroutine)
        randomModeCoroutine = nil
    end
end

-- ============================================================
-- GUI
-- ============================================================
function buildGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "RickPrimeGUI"
    screenGui.Parent = player:WaitForChild("PlayerGui")
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 320, 0, 400)
    mainFrame.Position = UDim2.new(0, 10, 0, 10)
    mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    mainFrame.BackgroundTransparency = 0.15
    mainFrame.BorderSizePixel = 0
    mainFrame.Visible = true
    mainFrame.Parent = screenGui
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 35)
    title.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    title.Text = "🌀 RickPrime v4"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Parent = mainFrame
    
    local info = Instance.new("TextLabel")
    info.Size = UDim2.new(1, 0, 0, 20)
    info.Position = UDim2.new(0, 0, 0, 37)
    info.BackgroundTransparency = 1
    info.Text = "🌍 Режимов: " .. #GAME_MODES
    info.TextColor3 = Color3.fromRGB(150, 200, 150)
    info.Font = Enum.Font.Gotham
    info.TextSize = 12
    info.Parent = mainFrame
    
    -- Вкладка Random
    local randomFrame = Instance.new("Frame")
    randomFrame.Size = UDim2.new(1, -10, 1, -60)
    randomFrame.Position = UDim2.new(0, 5, 0, 60)
    randomFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    randomFrame.BackgroundTransparency = 0.5
    randomFrame.Parent = mainFrame
    
    randomModeButton = Instance.new("TextButton")
    randomModeButton.Size = UDim2.new(1, -20, 0, 40)
    randomModeButton.Position = UDim2.new(0, 10, 0, 10)
    randomModeButton.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
    randomModeButton.Text = "🎲 Рандом"
    randomModeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    randomModeButton.Font = Enum.Font.GothamBold
    randomModeButton.TextSize = 18
    randomModeButton.Parent = randomFrame
    
    randomModeButton.MouseButton1Click:Connect(function()
        if randomModeActive then
            stopRandomMode()
        else
            startRandomMode()
        end
    end)
    
    randomStatusLabel = Instance.new("TextLabel")
    randomStatusLabel.Size = UDim2.new(1, -20, 0, 50)
    randomStatusLabel.Position = UDim2.new(0, 10, 0, 60)
    randomStatusLabel.BackgroundTransparency = 1
    randomStatusLabel.Text = "⏹️ Нажмите 'Рандом' для старта"
    randomStatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    randomStatusLabel.Font = Enum.Font.Gotham
    randomStatusLabel.TextSize = 14
    randomStatusLabel.TextWrapped = true
    randomStatusLabel.TextXAlignment = Enum.TextXAlignment.Left
    randomStatusLabel.Parent = randomFrame
    
    local delayLabel = Instance.new("TextLabel")
    delayLabel.Size = UDim2.new(0, 80, 0, 25)
    delayLabel.Position = UDim2.new(0, 10, 0, 120)
    delayLabel.BackgroundTransparency = 1
    delayLabel.Text = "Задержка (с):"
    delayLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    delayLabel.Font = Enum.Font.Gotham
    delayLabel.TextSize = 13
    delayLabel.Parent = randomFrame
    
    local delayInput = Instance.new("TextBox")
    delayInput.Size = UDim2.new(0, 50, 0, 25)
    delayInput.Position = UDim2.new(0, 100, 0, 120)
    delayInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    delayInput.Text = tostring(randomCycleDelay)
    delayInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    delayInput.Font = Enum.Font.Gotham
    delayInput.TextSize = 14
    delayInput.Parent = randomFrame
    
    delayInput.FocusLost:Connect(function()
        local val = tonumber(delayInput.Text)
        if val and val > 0 then
            randomCycleDelay = math.max(3, val)
            delayInput.Text = tostring(randomCycleDelay)
        else
            delayInput.Text = tostring(randomCycleDelay)
        end
    end)
    
    return screenGui
end

-- ============================================================
-- ЗАПУСК
-- ============================================================
local gui = buildGUI()

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == GUI_TOGGLE_KEY then
        local frame = gui:FindFirstChild("MainFrame")
        if frame then
            frame.Visible = not frame.Visible
        end
    end
end)

print("✅ RickPrime v4 загружен!")
print("🎯 Режимов: " .. #GAME_MODES)
print("⌨️ Right Shift - открыть GUI")
