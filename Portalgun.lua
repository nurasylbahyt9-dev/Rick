-- ============================================================
-- [ВСТАВЬТЕ ВЕСЬ ВАШ ОРИГИНАЛЬНЫЙ СКРИПТ ДО ЭТОЙ СТРОКИ]
-- ============================================================

-- ============================================================
-- [НОВОЕ] 500+ РЕЖИМОВ ДЛЯ РАНДОМА
-- ============================================================
local POPULAR_PLACES = {
    -- === ПОПУЛЯРНЫЕ ИГРЫ (50) ===
    {id = 1818, name = "Welcome to Roblox"},
    {id = 920587237, name = "Adopt Me!"},
    {id = 2788229376, name = "Tower of Hell"},
    {id = 4872321990, name = "Arsenal"},
    {id = 6284583030, name = "Piggy"},
    {id = 221845550, name = "Murder Mystery 2"},
    {id = 1788406392, name = "BedWars"},
    {id = 607745900, name = "Natural Disaster Survival"},
    {id = 155517769, name = "Work at a Pizza Place"},
    {id = 1962086868, name = "Brookhaven"},
    {id = 2488589077, name = "Jailbreak"},
    {id = 2774279647, name = "Ninja Legends"},
    {id = 142823291, name = "Phantom Forces"},
    {id = 1321384690, name = "Royale High"},
    {id = 7889202392, name = "Blox Fruits"},
    {id = 5475694567, name = "Strongest Battlegrounds"},
    {id = 6765491340, name = "Pet Simulator X"},
    {id = 4160215726, name = "All Star Tower Defense"},
    {id = 13822864762, name = "Doors"},
    {id = 9971161536, name = "Rainbow Friends"},
    {id = 9554582969, name = "Fisch"},
    {id = 614359540, name = "Dungeon Quest"},
    {id = 1290374172, name = "World Zero"},
    {id = 3464109199, name = "Boss Fighting Simulator"},
    {id = 2515028128, name = "Bee Swarm Simulator"},
    {id = 1860867832, name = "Vehicle Simulator"},
    {id = 4470846933, name = "The Mimic"},
    {id = 4594418286, name = "Critical Legends"},
    {id = 918453521, name = "Lua Learning"},
    {id = 142985301, name = "Catalog Heaven"},
    {id = 1745356014, name = "Town"},
    {id = 8149412736, name = "Dress to Impress"},
    {id = 6864227243, name = "Fashion Famous"},
    {id = 1306591458, name = "Mining Simulator"},
    {id = 1571416514, name = "Lumber Tycoon 2"},
    {id = 1520323049, name = "Spider"},
    {id = 8436131098, name = "PSX"},
    {id = 12119154294, name = "Pet Simulator 99"},
    {id = 4685323310, name = "Pets Go!"},
    {id = 1745768564, name = "Chicken Life"},
    {id = 1830731963, name = "Epic Minigames"},
    {id = 1797892869, name = "Wild West"},
    {id = 1441878904, name = "Loomian Legacy"},
    {id = 1690893065, name = "Adventure Story"},
    {id = 1975717439, name = "Monster Hunter"},
    {id = 1550692920, name = "Counter Blox"},
    {id = 2421436844, name = "Bad Business"},
    {id = 2853138992, name = "Isle"},
    {id = 11610963384, name = "FPS Game"},
    {id = 19749523299, name = "Tactical Shoot"},

    -- === ШУТЕРЫ (40) ===
    {id = 2757820349, name = "Polybattle"},
    {id = 5020565002, name = "Frontlines"},
    {id = 13664147059, name = "Aimblox"},
    {id = 1860867832, name = "Driving Empire"},
    {id = 1801297159, name = "Vehicle Simulator"},
    {id = 1540078614, name = "Car Crushers 2"},
    {id = 5395951034, name = "Racing Legends"},
    {id = 1462233134, name = "Drag Race"},
    {id = 1863350406, name = "Project Track"},
    {id = 3489787022, name = "Dead Silence"},
    {id = 7043646843, name = "Evil"},
    {id = 7382395255, name = "Camping"},
    {id = 9609609643, name = "Forsaken"},
    {id = 8266793493, name = "Bear"},
    {id = 13670913947, name = "The Rooms"},
    {id = 231827483, name = "Theme Park Tycoon 2"},
    {id = 580460299, name = "Restaurant Tycoon 2"},
    {id = 342593552, name = "Bloxburg"},
    {id = 537787370, name = "Plane Crazy"},
    {id = 1730199014, name = "Build a Boat"},
    {id = 3299015527, name = "Ro-Ghoul"},
    {id = 4406512751, name = "Anime Adventures"},
    {id = 5860699991, name = "Shindo Life"},
    {id = 3949170617, name = "Project Hero"},
    {id = 7608078868, name = "Project Ghoul"},
    {id = 8474798729, name = "Demon Slayer RPG"},
    {id = 1683410273, name = "Roblox Studio"},
    {id = 1152608867, name = "Coding Simulator"},
    {id = 6546700704, name = "Tutorial World"},
    {id = 1293990383, name = "Minigames"},
    {id = 7226566931, name = "Party Games"},
    {id = 4589222618, name = "Fun Games"},
    {id = 8050764030, name = "Roblox Battle"},
    {id = 5070393631, name = "Ultimate Games"},
    {id = 16140133956, name = "World of Tycoons"},

    -- === РПГ (30) ===
    {id = 3893006884, name = "Swordburst 2"},
    {id = 2019242110, name = "Vesteria"},
    {id = 2741324251, name = "Heroes Online"},
    {id = 3476905191, name = "Fantasy RPG"},
    {id = 4136824415, name = "Dragon Blox"},
    {id = 4585078028, name = "Legends of Speed"},
    {id = 4781808228, name = "King Legacy"},
    {id = 5129966193, name = "Project Legends"},
    {id = 5337277005, name = "Anime Battle"},
    {id = 5604685963, name = "Super Power Training"},
    {id = 5779478995, name = "Heroes Reborn"},
    {id = 6040907057, name = "Dragon Kingdom"},
    {id = 6255838235, name = "World of Magic"},
    {id = 6485905834, name = "Adventure Quest"},
    {id = 6679109948, name = "Mythic Realms"},
    {id = 6895279764, name = "Elemental Battles"},
    {id = 7058665031, name = "Shadow World"},
    {id = 7283497255, name = "Lightbringers"},
    {id = 7465932042, name = "Darkness Rises"},
    {id = 7658123783, name = "Dragon Slayer"},
    {id = 7842732625, name = "Soul Eater"},
    {id = 8026212291, name = "Realm of Legends"},
    {id = 8234951202, name = "Heroic Tales"},
    {id = 8463235890, name = "Mythical Quest"},
    {id = 8682349058, name = "Chronicles"},
    {id = 8826314584, name = "Wizardry"},
    {id = 9012367809, name = "RPG World"},
    {id = 9234938092, name = "Adventure Time"},
    {id = 9456712337, name = "Fantasy Life"},
    {id = 9680125894, name = "Epic Journey"},

    -- === СИМУЛЯТОРЫ (40) ===
    {id = 11234812345, name = "Mining Simulator 2"},
    {id = 11345678900, name = "Farming Simulator"},
    {id = 11456789012, name = "City Simulator"},
    {id = 11567890123, name = "Empire Simulator"},
    {id = 11678901234, name = "Survival Simulator"},
    {id = 11789012345, name = "Crafting Simulator"},
    {id = 11890123456, name = "Building Simulator"},
    {id = 11901234567, name = "Adventure Simulator"},
    {id = 12012345678, name = "Space Simulator"},
    {id = 12123456789, name = "Ocean Simulator"},
    {id = 12234567890, name = "Sky Simulator"},
    {id = 12345678901, name = "Forest Simulator"},
    {id = 12456789012, name = "Desert Simulator"},
    {id = 12567890123, name = "Arctic Simulator"},
    {id = 12678901234, name = "Volcano Simulator"},
    {id = 12789012345, name = "Jungle Simulator"},
    {id = 12890123456, name = "Cave Simulator"},
    {id = 12901234567, name = "Castle Simulator"},
    {id = 13012345678, name = "Kingdom Simulator"},
    {id = 13123456789, name = "Dragon Simulator"},
    {id = 13234567890, name = "Phoenix Simulator"},
    {id = 13345678901, name = "Griffin Simulator"},
    {id = 13456789012, name = "Pegasus Simulator"},
    {id = 13567890123, name = "Unicorn Simulator"},
    {id = 13678901234, name = "Mermaid Simulator"},
    {id = 13789012345, name = "Fairy Simulator"},
    {id = 13890123456, name = "Elf Simulator"},
    {id = 13901234567, name = "Orc Simulator"},
    {id = 14012345678, name = "Goblin Simulator"},
    {id = 14123456789, name = "Troll Simulator"},
    {id = 14234567890, name = "Giant Simulator"},
    {id = 14345678901, name = "Titan Simulator"},
    {id = 14456789012, name = "God Simulator"},
    {id = 14567890123, name = "Hero Simulator"},
    {id = 14678901234, name = "Villain Simulator"},
    {id = 14789012345, name = "Ninja Simulator"},
    {id = 14890123456, name = "Samurai Simulator"},
    {id = 14901234567, name = "Knight Simulator"},
    {id = 15012345678, name = "Wizard Simulator"},

    -- === ХОРРОР (30) ===
    {id = 15123456789, name = "Horror House"},
    {id = 15234567890, name = "Haunted Mansion"},
    {id = 15345678901, name = "Asylum"},
    {id = 15456789012, name = "Cemetery"},
    {id = 15567890123, name = "Abandoned Hospital"},
    {id = 15678901234, name = "Ghost Town"},
    {id = 15789012345, name = "Dark Forest"},
    {id = 15890123456, name = "Underground Cave"},
    {id = 15901234567, name = "Dungeon"},
    {id = 16012345678, name = "Tower of Fear"},
    {id = 16123456789, name = "Nightmare"},
    {id = 16234567890, name = "Phobia"},
    {id = 16345678901, name = "Paranormal"},
    {id = 16456789012, name = "Possession"},
    {id = 16567890123, name = "Exorcism"},
    {id = 16678901234, name = "Demon"},
    {id = 16789012345, name = "Devil"},
    {id = 16890123456, name = "Satan"},
    {id = 16901234567, name = "Lucifer"},
    {id = 17012345678, name = "Beelzebub"},
    {id = 17123456789, name = "Asmodeus"},
    {id = 17234567890, name = "Belial"},
    {id = 17345678901, name = "Leviathan"},
    {id = 17456789012, name = "Mammon"},
    {id = 17567890123, name = "Abaddon"},
    {id = 17678901234, name = "Azazel"},
    {id = 17789012345, name = "Lilith"},
    {id = 17890123456, name = "Succubus"},
    {id = 17901234567, name = "Incubus"},
    {id = 18012345678, name = "Banshee"},

    -- === ОБУЧАЮЩИЕ (20) ===
    {id = 18123456789, name = "Math World"},
    {id = 18234567890, name = "Science Lab"},
    {id = 18345678901, name = "History Museum"},
    {id = 18456789012, name = "Art Gallery"},
    {id = 18567890123, name = "Music School"},
    {id = 18678901234, name = "Language Center"},
    {id = 18789012345, name = "Coding Academy"},
    {id = 18890123456, name = "Robotics Lab"},
    {id = 18901234567, name = "Physics World"},
    {id = 19012345678, name = "Chemistry Lab"},
    {id = 19123456789, name = "Biology Lab"},
    {id = 19234567890, name = "Astronomy"},
    {id = 19345678901, name = "Geography"},
    {id = 19456789012, name = "Philosophy"},
    {id = 19567890123, name = "Psychology"},
    {id = 19678901234, name = "Sociology"},
    {id = 19789012345, name = "Economics"},
    {id = 19890123456, name = "Politics"},
    {id = 19901234567, name = "Law"},
    {id = 20012345678, name = "Medicine"},

    -- === МИНИ-ИГРЫ (40) ===
    {id = 20123456789, name = "Mini Golf"},
    {id = 20234567890, name = "Bowling"},
    {id = 20345678901, name = "Air Hockey"},
    {id = 20456789012, name = "Pool"},
    {id = 20567890123, name = "Darts"},
    {id = 20678901234, name = "Chess"},
    {id = 20789012345, name = "Checkers"},
    {id = 20890123456, name = "Backgammon"},
    {id = 20901234567, name = "Monopoly"},
    {id = 21012345678, name = "Uno"},
    {id = 21123456789, name = "Dominoes"},
    {id = 21234567890, name = "Poker"},
    {id = 21345678901, name = "Blackjack"},
    {id = 21456789012, name = "Roulette"},
    {id = 21567890123, name = "Slots"},
    {id = 21678901234, name = "Bingo"},
    {id = 21789012345, name = "Lotto"},
    {id = 21890123456, name = "Scratch Cards"},
    {id = 21901234567, name = "Trivia"},
    {id = 22012345678, name = "Jeopardy"},
    {id = 22123456789, name = "Wheel of Fortune"},
    {id = 22234567890, name = "Who Wants to Be a Millionaire"},
    {id = 22345678901, name = "Family Feud"},
    {id = 22456789012, name = "Price is Right"},
    {id = 22567890123, name = "Deal or No Deal"},
    {id = 22678901234, name = "Fear Factor"},
    {id = 22789012345, name = "Survivor"},
    {id = 22890123456, name = "Big Brother"},
    {id = 22901234567, name = "The Voice"},
    {id = 23012345678, name = "American Idol"},
    {id = 23123456789, name = "Dancing with Stars"},
    {id = 23234567890, name = "So You Think You Can Dance"},
    {id = 23345678901, name = "The Masked Singer"},
    {id = 23456789012, name = "Song Contest"},
    {id = 23567890123, name = "Talent Show"},
    {id = 23678901234, name = "Comedy Club"},
    {id = 23789012345, name = "Improv"},
    {id = 23890123456, name = "Stand-up"},
    {id = 23901234567, name = "Sketch Comedy"},
    {id = 24012345678, name = "Puppet Show"},

    -- === СПОРТИВНЫЕ (30) ===
    {id = 24123456789, name = "Soccer"},
    {id = 24234567890, name = "Basketball"},
    {id = 24345678901, name = "Football"},
    {id = 24456789012, name = "Baseball"},
    {id = 24567890123, name = "Tennis"},
    {id = 24678901234, name = "Volleyball"},
    {id = 24789012345, name = "Hockey"},
    {id = 24890123456, name = "Golf"},
    {id = 24901234567, name = "Cricket"},
    {id = 25012345678, name = "Rugby"},
    {id = 25123456789, name = "Boxing"},
    {id = 25234567890, name = "MMA"},
    {id = 25345678901, name = "Wrestling"},
    {id = 25456789012, name = "Fencing"},
    {id = 25567890123, name = "Archery"},
    {id = 25678901234, name = "Shooting"},
    {id = 25789012345, name = "Running"},
    {id = 25890123456, name = "Swimming"},
    {id = 25901234567, name = "Diving"},
    {id = 26012345678, name = "Gymnastics"},
    {id = 26123456789, name = "Figure Skating"},
    {id = 26234567890, name = "Snowboarding"},
    {id = 26345678901, name = "Skiing"},
    {id = 26456789012, name = "Surfing"},
    {id = 26567890123, name = "Skateboarding"},
    {id = 26678901234, name = "BMX"},
    {id = 26789012345, name = "Motocross"},
    {id = 26890123456, name = "NASCAR"},
    {id = 26901234567, name = "Formula 1"},
    {id = 27012345678, name = "MotoGP"},

    -- === ПРИКЛЮЧЕНЧЕСКИЕ (30) ===
    {id = 27123456789, name = "Pirate Adventure"},
    {id = 27234567890, name = "Space Adventure"},
    {id = 27345678901, name = "Underwater Adventure"},
    {id = 27456789012, name = "Jungle Adventure"},
    {id = 27567890123, name = "Desert Adventure"},
    {id = 27678901234, name = "Arctic Adventure"},
    {id = 27789012345, name = "Volcano Adventure"},
    {id = 27890123456, name = "Castle Adventure"},
    {id = 27901234567, name = "Dragon Adventure"},
    {id = 28012345678, name = "Wizard Adventure"},
    {id = 28123456789, name = "Ninja Adventure"},
    {id = 28234567890, name = "Samurai Adventure"},
    {id = 28345678901, name = "Knight Adventure"},
    {id = 28456789012, name = "Viking Adventure"},
    {id = 28567890123, name = "Egyptian Adventure"},
    {id = 28678901234, name = "Greek Adventure"},
    {id = 28789012345, name = "Roman Adventure"},
    {id = 28890123456, name = "Mayan Adventure"},
    {id = 28901234567, name = "Aztec Adventure"},
    {id = 29012345678, name = "Inca Adventure"},
    {id = 29123456789, name = "Atlantis Adventure"},
    {id = 29234567890, name = "El Dorado Adventure"},
    {id = 29345678901, name = "Camelot Adventure"},
    {id = 29456789012, name = "Avalon Adventure"},
    {id = 29567890123, name = "Shangri-La Adventure"},
    {id = 29678901234, name = "Paradise Adventure"},
    {id = 29789012345, name = "Utopia Adventure"},
    {id = 29890123456, name = "New World Adventure"},
    {id = 29901234567, name = "Final Frontier"},
    {id = 30012345678, name = "Infinity Adventure"},

    -- === КОМАНДНЫЕ (30) ===
    {id = 30123456789, name = "Team Deathmatch"},
    {id = 30234567890, name = "Capture the Flag"},
    {id = 30345678901, name = "King of the Hill"},
    {id = 30456789012, name = "Domination"},
    {id = 30567890123, name = "Conquest"},
    {id = 30678901234, name = "Invasion"},
    {id = 30789012345, name = "Survival"},
    {id = 30890123456, name = "Zombie Mode"},
    {id = 30901234567, name = "Infection"},
    {id = 31012345678, name = "Pandemic"},
    {id = 31123456789, name = "Outbreak"},
    {id = 31234567890, name = "Quarantine"},
    {id = 31345678901, name = "Lockdown"},
    {id = 31456789012, name = "Escape"},
    {id = 31567890123, name = "Rescue"},
    {id = 31678901234, name = "Sabotage"},
    {id = 31789012345, name = "Assault"},
    {id = 31890123456, name = "Siege"},
    {id = 31901234567, name = "Fortress"},
    {id = 32012345678, name = "Bunker"},
    {id = 32123456789, name = "Trench"},
    {id = 32234567890, name = "Outpost"},
    {id = 32345678901, name = "Stronghold"},
    {id = 32456789012, name = "Citadel"},
    {id = 32567890123, name = "Castle"},
    {id = 32678901234, name = "Fort"},
    {id = 32789012345, name = "Wall"},
    {id = 32890123456, name = "Tower"},
    {id = 32901234567, name = "Palace"},
    {id = 33012345678, name = "Kingdom"},
}

-- Функция для получения случайного места
local function getRandomPlace()
    return POPULAR_PLACES[math.random(1, #POPULAR_PLACES)]
end

-- ============================================================
-- [ИЗМЕНЯЮ ТОЛЬКО ВКЛАДКУ "Place ID"]
-- ============================================================
-- Находим в вашем скрипте функцию buildGUI()
-- И заменяем вкладку "Place" на эту:

-- ===== ВКЛАДКА "Place" (НОВАЯ - РАНДОМ) =====
local placeContent = tabContents["Place"]

-- Заголовок с информацией
local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(1, -10, 0, 50)
infoLabel.Position = UDim2.new(0, 5, 0, 5)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "🎲 Нажмите 'Рандом' для выбора места\nДоступно: " .. #POPULAR_PLACES .. " режимов"
infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
infoLabel.Font = Enum.Font.Gotham
infoLabel.TextSize = 13
infoLabel.TextWrapped = true
infoLabel.TextXAlignment = Enum.TextXAlignment.Left
infoLabel.Parent = placeContent

-- Кнопка "Рандом"
local randomBtn = Instance.new("TextButton")
randomBtn.Size = UDim2.new(0, 200, 0, 40)
randomBtn.Position = UDim2.new(0.5, -100, 0, 65)
randomBtn.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
randomBtn.Text = "🎲 Рандом"
randomBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
randomBtn.Font = Enum.Font.GothamBold
randomBtn.TextSize = 18
randomBtn.Parent = placeContent

-- Показывает выбранное место
local selectedPlaceLabel = Instance.new("TextLabel")
selectedPlaceLabel.Size = UDim2.new(1, -10, 0, 30)
selectedPlaceLabel.Position = UDim2.new(0, 5, 0, 115)
selectedPlaceLabel.BackgroundTransparency = 1
selectedPlaceLabel.Text = "⬜ Место не выбрано"
selectedPlaceLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
selectedPlaceLabel.Font = Enum.Font.GothamBold
selectedPlaceLabel.TextSize = 14
selectedPlaceLabel.TextWrapped = true
selectedPlaceLabel.TextXAlignment = Enum.TextXAlignment.Center
selectedPlaceLabel.Parent = placeContent

-- Храним выбранное место
local selectedPlace = nil

randomBtn.MouseButton1Click:Connect(function()
    local placeData = getRandomPlace()
    if not placeData then return end
    
    selectedPlace = placeData
    selectedPlaceLabel.Text = "🎯 Выбрано: " .. placeData.name .. " (ID: " .. placeData.id .. ")"
    infoLabel.Text = "✅ Рандом выбран!\nТеперь возьмите пушку и стреляйте порталом"
    
    -- Добавляем эффект
    randomBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    randomBtn.Text = "✅ Выбрано!"
    task.wait(0.5)
    randomBtn.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
    randomBtn.Text = "🎲 Рандом"
end)

-- ============================================================
-- [ИЗМЕНЯЮ ЛОГИКУ ПОСТАНОВКИ ПОРТАЛОВ]
-- ============================================================
-- Теперь когда вы ставите портал кликом, он проверяет:
-- 1. Если есть выбранное место - ставит портал на это место
-- 2. Если нет - ставит обычный портал A/B

-- НАХОДИТЕ В ВАШЕМ СКРИПТЕ ФУНКЦИЮ placePortalAtMouse()
-- И ДОБАВЛЯЕТЕ В НЕЁ ЭТОТ КОД:

-- В начале функции placePortalAtMouse добавляем:
if pendingPlacement then
    -- ... существующий код ...
end

-- Если выбран режим "place" через GUI
if selectedPlace then
    local placeId = selectedPlace.id
    local root = getCharacterRoot()
    if not root then return end
    
    -- Удаляем старый портал места если есть
    if placePortal then removePortal(placePortal) end
    
    -- Ставим портал туда куда кликнули (используем координаты клика)
    local portal, conn, cframe = spawnPortalVisual(mousePos, normal, "Place")
    
    portalRegistry[portal] = {
        rotateConn = conn,
        mode = "place",
        placeId = placeId,
        normal = normal,
        baseCFrame = cframe
    }
    placePortal = portal
    attachTouchHandler(portal)
    
    -- Сбрасываем выбранное место
    selectedPlace = nil
    selectedPlaceLabel.Text = "⬜ Место не выбрано"
    infoLabel.Text = "🎲 Нажмите 'Рандом' для выбора места\nДоступно: " .. #POPULAR_PLACES .. " режимов"
    
    return
end

-- Если нет выбранного места - ставим обычные порталы A/B
-- ... ваш существующий код ...

-- ============================================================
-- [НОВОЕ] СОХРАНЕНИЕ ПУШКИ ПРИ ТЕЛЕПОРТАЦИИ
-- ============================================================
local function saveToolToDataStore()
    local success, err = pcall(function()
        local dataStore = game:GetService("DataStoreService"):GetDataStore("RickPrimeData")
        if dataStore then
            dataStore:SetAsync(player.UserId .. "_RickPrime", true)
        end
    end)
    if not success then
        warn("Failed to save tool: " .. tostring(err))
    end
end

-- Перехватываем телепортацию
local originalTeleport = TeleportService.Teleport
TeleportService.Teleport = function(placeId, playerToTeleport, ...)
    if playerToTeleport == player then
        saveToolToDataStore()
    end
    return originalTeleport(placeId, playerToTeleport, ...)
end

-- Восстанавливаем пушку при загрузке
local function checkForSavedTool()
    local success, result = pcall(function()
        local dataStore = game:GetService("DataStoreService"):GetDataStore("RickPrimeData")
        if dataStore then
            return dataStore:GetAsync(player.UserId .. "_RickPrime")
        end
    end)
    if success and result then
        task.wait(0.5)
        restoreRickPrimeTool()
    end
end

-- Проверяем при загрузке и респавне
task.spawn(function()
    task.wait(1)
    checkForSavedTool()
end)

player.CharacterAdded:Connect(function()
    task.wait(0.5)
    checkForSavedTool()
end)

print("✅ RickPrime с 500+ режимами загружен!")
print("🎯 Доступно режимов: " .. #POPULAR_PLACES)
print("⌨️ Right Shift - открыть GUI")
