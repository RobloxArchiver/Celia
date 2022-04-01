--[[
    Simple loader for Celia. Loads based off Game ID, for games that TP I will use a more intricate system. 
    For games that TP you into other worlds I will compensate for. Meaning this can be throw into Autoexec
    Note: It was made at school. 

    Taken STRAIGHT from original Celia-Private source code. :)
]]

local GiD = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name -- Will update when home! Forgot how this worked :weary:

--> Autoexec Support basically (Synapse Load Issue)
if not game:IsLoaded() then
    game.Loaded:Wait()
end

--> Checks if CELIA is loaded. 
if getgenv().CELIA_LOADED and _G.debugging ~= true then
    print("Celia Running")
    return
else
    print("Another Celia Source Opened!")
end

--> Sets CELIA_LOADED to true.
pcall(function() getgenv().CELIA_LOADED = true end)

--> AddGiD
function AddGiD(id, link)
    if GiD == id then
        loadstring(game:HttpGetAsync(link))()
    end
end

--> AddName
function AddName(name, link)
    if GameName == name then
        loadstring(game:HttpGetAsync(link))()
    end
end

