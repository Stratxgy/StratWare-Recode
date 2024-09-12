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

local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
-- ESPLibrary and getgenv().ExunysDeveloperESP is equivalent.
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
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

		getgenv().ExunysDeveloperESP = {
			DeveloperSettings = {
				Path = "Exunys Developer/Exunys ESP/Configuration.cfg",
				UnwrapOnCharacterAbsence = false,
				UpdateMode = "RenderStepped",
				TeamCheckOption = "TeamColor",
				RainbowSpeed = 1, -- Bigger = Slower
				WidthBoundary = 1.5 -- Smaller Value = Bigger Width
			},
		
			Settings = {
				Enabled = true,
				PartsOnly = false,
				TeamCheck = true,
				AliveCheck = true,
				LoadConfigOnLaunch = true,
				EnableTeamColors = false,
				TeamColor = Color3.fromRGB(170, 170, 255),
				StretchScreenResoultion = false,
				StretchAmount = 0.75
			},
		
			Properties = {
				ESP = {
					Enabled = true,
					RainbowColor = false,
					RainbowOutlineColor = false,
					Offset = 10,
		
					Color = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					Size = 14,
					Font = DrawingFonts.Plex, -- Direct2D Fonts: {UI, System, Plex, Monospace}; ROBLOX Fonts: {Roboto, Legacy, SourceSans, RobotoMono}
		
					OutlineColor = Color3.fromRGB(0, 0, 0),
					Outline = true,
		
					DisplayDistance = true,
					DisplayHealth = false,
					DisplayName = false,
					DisplayDisplayName = true,
					DisplayTool = true
				},
		
				Tracer = {
					Enabled = false,
					RainbowColor = false,
					RainbowOutlineColor = false,
					Position = 1, -- 1 = Bottom; 2 = Center; 3 = Mouse
		
					Transparency = 1,
					Thickness = 1,
					Color = Color3.fromRGB(255, 255, 255),
		
					Outline = true,
					OutlineColor = Color3.fromRGB(0, 0, 0)
				},
		
				HeadDot = {
					Enabled = true,
					RainbowColor = false,
					RainbowOutlineColor = false,
		
					Color = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					Thickness = 1,
					NumSides = 30,
					Filled = false,
		
					OutlineColor = Color3.fromRGB(0, 0, 0),
					Outline = true
				},
		
				Box = {
					Enabled = true,
					RainbowColor = false,
					RainbowOutlineColor = false,
		
					Color = Color3.fromRGB(255, 255, 255),
					Transparency = 1,
					Thickness = 1,
					Filled = false,
		
					OutlineColor = Color3.fromRGB(0, 0, 0),
					Outline = true
				},
		
				HealthBar = {
					Enabled = true,
					RainbowOutlineColor = false,
					Offset = 4,
					Blue = 100,
					Position = 3, -- 1 = Top; 2 = Bottom; 3 = Left; 4 = Right
		
					Thickness = 1,
					Transparency = 1,
		
					OutlineColor = Color3.fromRGB(0, 0, 0),
					Outline = true
				},
		
				Crosshair = {
					Enabled = false,
					RainbowColor = false,
					RainbowOutlineColor = false,
					TStyled = false,
					Position = 1, -- 1 = Mouse; 2 = Center
		
					Size = 12,
					GapSize = 6,
					Rotation = 0,
		
					Rotate = false,
					RotateClockwise = true,
					RotationSpeed = 5,
		
					PulseGap = false,
					PulsingStep = 10,
					PulsingSpeed = 5,
					PulsingBounds = {4, 8}, -- {...}[1] => GapSize Min; {...}[2] => GapSize Max
		
					Color = Color3.fromRGB(0, 255, 0),
					Thickness = 1,
					Transparency = 1,
		
					OutlineColor = Color3.fromRGB(0, 0, 0),
					Outline = true,
		
					CenterDot = {
						Enabled = false,
						RainbowColor = false,
						RainbowOutlineColor = false,
		
						Radius = 2,
		
						Color = Color3.fromRGB(0, 255, 0),
						Transparency = 1,
						Thickness = 1,
						NumSides = 60,
						Filled = false,
		
						OutlineColor = Color3.fromRGB(0, 0, 0),
						Outline = true
					}
				}
			}
		
			-- The rest is core data for the functionality of the module...
		}
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

		getgenv().ExunysDeveloperAimbot = {
			DeveloperSettings = {
				UpdateMode = "RenderStepped",
				TeamCheckOption = "TeamColor",
				RainbowSpeed = 1 -- Bigger = Slower
			},
		
			Settings = {
				Enabled = true,
		
				TeamCheck = true,
				AliveCheck = true,
				WallCheck = false,
		
				OffsetToMoveDirection = false, -- Prediction
				OffsetIncrement = 15, -- Min: 1; Max: 30 -- Amplitude
		
				Sensitivity = 0, -- Animation length (in seconds) before fully locking onto target / CFrame Sensitivity
				Sensitivity2 = 3.5, -- mousemoverel Sensitivity
		
				LockMode = 1, -- 1 = CFrame; 2 = mousemoverel
				LockPart = "Head", -- Body part to lock on
		
				TriggerKey = Enum.UserInputType.MouseButton2,
				Toggle = false
			},
		
			FOVSettings = {
				Enabled = true,
				Visible = true,
		
				Radius = 90, -- Field Of View
				NumSides = 60,
		
				Thickness = 1,
				Transparency = 1,
				Filled = false,
		
				RainbowColor = false,
				RainbowOutlineColor = false,
				Color = Color3.fromRGB(255, 255, 255),
				OutlineColor = Color3.fromRGB(0, 0, 0),
				LockedColor = Color3.fromRGB(255, 150, 150)
			}
		}
  	end    
})

















OrionLib:Init()