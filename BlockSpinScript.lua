-- BlockSpinScript.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local BlockSpinConfig = require(ReplicatedStorage:WaitForChild("BlockSpinConfig"))

local function onPlayerAdded(player)
    -- Player initialization logic
    print("Player " .. player.Name .. " added")
end

local function onPlayerRemoving(player)
    -- Player cleanup logic
    print("Player " .. player.Name .. " removed")
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

-- Main game loop
while true do
    -- Game logic
    wait(1)
end