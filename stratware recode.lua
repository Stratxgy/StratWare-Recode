local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "StratWare Recode", HidePremium = false, SaveConfig = true, ConfigFolder = "Stratware"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

--ESP / Aimbot LIB

local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/StratWare-Recode/main/Aimbot.lua"))()
-- ESPLibrary and getgenv().ExunysDeveloperESP is equivalent.
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/StratWare-Recode/main/ESP.lua"))()
Aimbot.Load()

--visuals

local visualsTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


visualsTab:AddButton({
	Name = "ESP",
	Callback = function()
		ExunysDeveloperESP.Load()
  	end,
})


--aimbot

local aimbotTab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


aimbotTab:AddButton({
	Name = "Aimbot",
	Callback = function()
		ExunysDeveloperAimbot.Load()
  	end    
})



OrionLib:Init()
