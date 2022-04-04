--> Tables
local eggTable = {}
--> Variables
local Player = game:GetService("Players").LocalPlayer;
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local WSpace = game:GetService("Workspace");

--> Get eggs and put them into table. (for auto-open.)
for i,v in pairs(WSpace.Eggs:GetChildren()) do -- If I find a better path I will switch. 
	table.insert(eggTable, v.Name)
end

--> Loader
local Celia = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/cc77cf7e-a9ae-407b-b0f9-066000ddd648/main/5bc53455-1a45-4a19-bd89-890c2ccaa3f6.lua"))();
local CeliaWindow = Celia.new(true, "Celia 💚");
CeliaWindow.ChangeToggleKey(Enum.KeyCode.BackSlash);

--> Categories
local WelcomeCategory = CeliaWindow:Category("Welcome")
local EggCategory = CeliaWindow:Category("Egg")

--> Welcome
local Welcome = WelcomeCategory:Sector("Welcome")
Welcome:Cheat("Label", "Celia Loaded!")
Welcome:Cheat("Label", "Made by Uptight")
Welcome:Cheat("Label", "Keybind: BackSlash")
local Information = WelcomeCategory:Sector("Information")
--[[Streamer Mode, displays ***** instead of the user.]] if getfenv().streamerMode==true then Information:Cheat("Label","******")else Information:Cheat("Label",Player.Name)end
--[[Streamer Mode, its stupid but must keep tradition.]] if getfenv().streamerMode==true then Information:Cheat("Label","******")else Information:Cheat("Label",Player.DisplayName)end
Information:Cheat("Label", GameName)

--> EggSector
local EggList = EggCategory:Sector("Pick Egg")
EggList:Cheat("Label", "All Eggs here are the latest eggs. ") 
EggList:Cheat("Dropdown", "Pick Egg", function(egg)
    print(egg .. " has been picked. Adding function later.")
end, {options = eggTable})
