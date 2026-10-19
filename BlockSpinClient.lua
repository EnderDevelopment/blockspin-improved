-- BlockSpinClient.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

local function onInputBegan(input, gameProcessed)
    -- Handle player input
    print("Input began: " .. input.UserInputType.Name)
end

local function onInputEnded(input, gameProcessed)
    -- Handle player input
    print("Input ended: " .. input.UserInputType.Name)
end

player:GetMouse().KeyDown:Connect(function(key)
    -- Handle key presses
    print("Key pressed: " .. key)
end)

player:GetMouse().KeyUp:Connect(function(key)
    -- Handle key releases
    print("Key released: " .. key)
end)

player:GetMouse().Button1Down:Connect(function()
    -- Handle left mouse button clicks
    print("Left mouse button clicked")
end)

player:GetMouse().Button2Down:Connect(function()
    -- Handle right mouse button clicks
    print("Right mouse button clicked")
end)