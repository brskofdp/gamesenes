-- Exemple d'utilisation de Gamesense UI Library
-- Remplace cette URL par le raw GitHub de ton fichier source.lua.
local SOURCE_URL = "https://raw.githubusercontent.com/brskofdp/gamesenes/refs/heads/main/source.lua"

local Library = loadstring(game:HttpGet(SOURCE_URL))()

local Window = Library:Window({
    Name = "Mon menu",
    CloseBind = Enum.KeyCode.Insert,
})

local MainTab = Window:CreateTab({
    Icon = "rbxassetid://8547236654",
})

local MainSection = MainTab:Section({
    Name = "Options",
    Fill = true,
})

MainSection:Toggle({
    Name = "Activer",
    Default = false,
    Callback = function(State)
        print("Activer:", State)
    end,
})

MainSection:Slider({
    Name = "Valeur",
    Min = 0,
    Max = 100,
    Default = 50,
    Ending = "%",
    Callback = function(Value)
        print("Valeur:", Value)
    end,
})

MainSection:Button({
    Name = "Afficher une notification",
    Callback = function()
        Library:Notify({
            Message = "Bonjour depuis Gamesense !",
            Position = "Top Left",
            Delay = 3,
        })
    end,
})

Library:Init()
