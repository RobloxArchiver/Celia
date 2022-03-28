-- /* 
-- /* InputFunctions
-- /* Made by: Uptight
-- /* Date: 3/26/2022
-- /* Description: This library is meant to mimic Script-Ware's input functions. https://docs.script-ware.com/input-functions/
-- /* 
-- /* Usage: 
-- /* --> keypress(key) // SetKeyDown(key)
-- /* --> keyrelease(key) // SetKeyUp(key)
-- /* --> isrblxactive() // https://developer.roblox.com/en-us/api-reference/event/UserInputService/WindowFocused
-- /*
-- /* https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes -- For codes for keypress and keyrelease
-- /*

local VirtualUser = game:GetService('VirtualUser');
local Input = game:GetService('UserInputService');

--> VirtualUser Library // It is so stupidly simple why don't more developers add this to their exploits and scripts? 10 Seconds
function keypress(key)
    VirtualUser:SetKeyDown(key)
end

function keyrelease(key)
    VirtualUser:SetKeyUp(key)
end

--> I take my words back, este contrayao no quiere trabajar. Cabron :weary:
-- function isrblxactive()
--    if Input.WindowFocused:Connect() == true then
--        print("true")
--        return true
--    elseif Input.WindowFocusReleased:Connect() then
--        print("false")
--        return false
--    end
-- end

--> MouseClicking // Left Button
function mouse1click()
    keypress('0x01')
    keyrelease('0x01')
end

function mouse1press()
    keypress('0x01')
end

function mouse1release()
    keyrelease('0x01')
end

--> Right Button
function mouse2click()
    keypress('0x02')
    keyrelease('0x02')
end

function mouse2press()
    keypress('0x02')
end

function mouse2release()
    keyrelease('0x02')
end

--> Mouse Library
function mousemoverel(x, y)
    VirtualUser:MoveMouse(Vector2.new(x, y))
end

-- /* Took 5 minutes to write, even less!
-- /* A library so simple even 3ds will cry about why he didn't write it (he did)
