local Player = game:GetService("Players").LocalPlayer;
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local WSpace = game:GetService("Workspace");

--[[
 
 GUI SHIT AFTER THIS
 
 ]]

--#region // DO NOT CHANGE
local Celia = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/cc77cf7e-a9ae-407b-b0f9-066000ddd648/main/5bc53455-1a45-4a19-bd89-890c2ccaa3f6.lua"))();
local CeliaWindow = Celia.new(true, "Celia 💚");
CeliaWindow.ChangeToggleKey(Enum.KeyCode.BackSlash);
--#endregion

local WelcomeCategory = CeliaWindow:Category("Welcome")

--#region // Welcome
local Welcome = WelcomeCategory:Sector("Welcome")
Welcome:Cheat("Label", "Celia Loaded!")
Welcome:Cheat("Label", "Made by Uptight")
Welcome:Cheat("Label", "Keybind: BackSlash")
local Information = WelcomeCategory:Sector("Information")
Information:Cheat("Label", Player.Name)
Information:Cheat("Label", Player.UserId)
Information:Cheat("Label", GameName)
local Notice = WelcomeCategory:Sector("Notice")
Notice:Cheat("Label", "Since I am not gonna skid")
Notice:Cheat("Label", "I will only make things I can/know")
--#endregion
