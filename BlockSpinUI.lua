-- BlockSpinUI.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function createUI()
    -- Create UI elements
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "BlockSpinUI"

    local frame = Instance.new("Frame", screenGui)
    frame.Size = UDim2.new(0.5, 0, 0.5, 0)
    frame.Position = UDim2.new(0.25, 0, 0.25, 0)
    frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    frame.BorderSizePixel = 0

    local textLabel = Instance.new("TextLabel", frame)
    textLabel.Size = UDim2.new(1, 0, 0.2, 0)
    textLabel.Position = UDim2.new(0, 0, 0.4, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Text = "BlockSpin"
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 24

        -- Add a button to start the game
    local startButton = Instance.new("TextButton", frame)
    startButton.Size = UDim2.new(0.3, 0, 0.1, 0)
    startButton.Position = UDim2.new(0.35, 0, 0.6, 0)
    startButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
    startButton.BorderSizePixel = 0
    startButton.TextColor3 = Color3.new(1, 1, 1)
    startButton.Text = "Start"
    startButton.Font = Enum.Font.GothamBold
    startButton.TextSize = 18

    -- Add a label to display game status
    local statusLabel = Instance.new("TextLabel", frame)
    statusLabel.Size = UDim2.new(1, 0, 0.1, 0)
    statusLabel.Position = UDim2.new(0, 0, 0.8, 0)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextColor3 = Color3.new(1, 1, 1)
    statusLabel.Text = "Waiting to start..."
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.TextSize = 16

    -- Add event listener for the start button
    startButton.MouseButton1Click:Connect(function()
        local remoteEvent = ReplicatedStorage:WaitForChild("BlockSpinRemoteEvent")
        remoteEvent:FireServer("StartGame")
    end)
end

createUI()