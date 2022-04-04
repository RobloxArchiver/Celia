--[[

-->
--> _G, getfenv, and local table changes;
-->     getfenv().streamerMode (set to false normally unless toggled by user.)
-->

]]

--> Variables
local Player = game:GetService("Players").LocalPlayer;
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local WSpace = game:GetService("Workspace");

--> Loader
local Celia = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/cc77cf7e-a9ae-407b-b0f9-066000ddd648/main/5bc53455-1a45-4a19-bd89-890c2ccaa3f6.lua"))();
local CeliaWindow = Celia.new(true, "Celia 💚");
CeliaWindow.ChangeToggleKey(Enum.KeyCode.BackSlash);

--> Categories
local WelcomeCategory = CeliaWindow:Category("Welcome")

--> Welcome
local Welcome = WelcomeCategory:Sector("Welcome")
Welcome:Cheat("Label", "Celia Loaded!")
Welcome:Cheat("Label", "Made by Uptight")
Welcome:Cheat("Label", "Keybind: BackSlash")
local Information = WelcomeCategory:Sector("Information")
--[[Streamer Mode, displays ***** instead of the user.]] if getfenv().streamerMode==true then Information:Cheat("Label","******")else Information:Cheat("Label",Player.Name)end
--[[Streamer Mode, its stupid but must keep tradition.]] if getfenv().streamerMode==true then Information:Cheat("Label","******")else Information:Cheat("Label",Player.DisplayName)end
Information:Cheat("Label", GameName)
