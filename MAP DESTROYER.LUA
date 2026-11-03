-- [[ ============================================ ]] --
-- [[   🔥 AYAN HUB + KEY SYSTEM [MAP DESTROYER]  ]] --
-- [[            MADE BY: AYANUU                   ]] --
-- [[ ============================================ ]] --

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")

-- Purani GUI ko completely destroy karo taaki error na aaye
if CoreGui:FindFirstChild("AYANHub_MultiTab") then CoreGui.AYANHub_MultiTab:Destroy() end
if PlayerGui:FindFirstChild("AYANHub_MultiTab") then PlayerGui.AYANHub_MultiTab:Destroy() end
if CoreGui:FindFirstChild("AYANHub_KeySystem") then CoreGui.AYANHub_KeySystem:Destroy() end
if PlayerGui:FindFirstChild("AYANHub_KeySystem") then PlayerGui.AYANHub_KeySystem:Destroy() end

-- ============================================ --
--               KEY SYSTEM GUI                 --
-- ============================================ --
local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "AYANHub_KeySystem"
KeyGui.ResetOnSpawn = false
KeyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

pcall(function() KeyGui.Parent = gethui() end)
if not KeyGui.Parent then pcall(function() KeyGui.Parent = CoreGui end) end
if not KeyGui.Parent then KeyGui.Parent = PlayerGui end

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 320, 0, 225)
KeyFrame.Position = UDim2.new(0.5, -160, 0.5, -112)
KeyFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = KeyGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 12)
KeyCorner.Parent = KeyFrame

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Thickness = 2
KeyStroke.Color = Color3.fromRGB(255, 90, 0)
KeyStroke.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "👑MAP DESTROYER MADE BY AYANUU👑"
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 11
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(1, -40, 0, 38)
KeyBox.Position = UDim2.new(0, 20, 0, 48)
KeyBox.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
KeyBox.PlaceholderText = "Enter Key Here..."
KeyBox.Text = ""
KeyBox.Font = Enum.Font.GothamMedium
KeyBox.TextSize = 13
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 150)
KeyBox.Parent = KeyFrame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 8)
BoxCorner.Parent = KeyBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(1, -40, 0, 35)
SubmitBtn.Position = UDim2.new(0, 20, 0, 96)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 90, 0)
SubmitBtn.Text = "Submit Key"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 12
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Parent = KeyFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 8)
SubmitCorner.Parent = SubmitBtn

local KeyLinkBtn = Instance.new("TextButton")
KeyLinkBtn.Size = UDim2.new(1, -40, 0, 32)
KeyLinkBtn.Position = UDim2.new(0, 20, 0, 145)
KeyLinkBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
KeyLinkBtn.Text = "📋 KEY LINK"
KeyLinkBtn.Font = Enum.Font.GothamBold
KeyLinkBtn.TextSize = 11
KeyLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyLinkBtn.Parent = KeyFrame

local KeyLinkCorner = Instance.new("UICorner")
KeyLinkCorner.CornerRadius = UDim.new(0, 8)
KeyLinkCorner.Parent = KeyLinkBtn

KeyLinkBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://pastebin.com")
        KeyLinkBtn.Text = "✅ Key Link Copied!"
        task.delay(1.5, function() KeyLinkBtn.Text = "📋 KEY LINK" end)
    end
end)

-- Main Hub function jo key verify hone ke baad chalegi
local function LoadMainHub()
    KeyGui:Destroy()

    task.spawn(function()
        local function SendChat(msg)
            pcall(function()
                if ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
                    local sayEvent = ReplicatedStorage.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
                    if sayEvent then sayEvent:FireServer(msg, "All") end
                elseif TextChatService then
                    local channels = TextChatService:FindFirstChild("TextChannels")
                    if channels and channels:FindFirstChild("RBXGeneral") then
                        channels.RBXGeneral:SendAsync(msg)
                    end
                end
            end)
        end
        SendChat("💀 MAP DESTROYER LOAD...💀")
        task.wait(1)
        SendChat("🏠THIS SCRIPT ONLY FOR LIFE TOGETHER🏠")
        task.wait(1)
        SendChat("👑 MADE BY AYANUU 👑")
    end)

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AYANHub_MultiTab"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    pcall(function() ScreenGui.Parent = gethui() end)
    if not ScreenGui.Parent then pcall(function() ScreenGui.Parent = CoreGui end) end
    if not ScreenGui.Parent then ScreenGui.Parent = PlayerGui end

    local FloatBtn = Instance.new("TextButton")
    FloatBtn.Size = UDim2.new(0, 50, 0, 50)
    FloatBtn.Position = UDim2.new(0, 20, 0.5, -25)
    FloatBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    FloatBtn.Text = "🌪️"
    FloatBtn.TextSize = 24
    FloatBtn.Active = true
    FloatBtn.Draggable = true
    FloatBtn.Parent = ScreenGui

    local FloatCorner = Instance.new("UICorner")
    FloatCorner.CornerRadius = UDim.new(1, 0)
    FloatCorner.Parent = FloatBtn

    local FloatStroke = Instance.new("UIStroke")
    FloatStroke.Thickness = 2
    FloatStroke.Color = Color3.fromRGB(255, 90, 0)
    FloatStroke.Parent = FloatBtn

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 440, 0, 320)
    MainFrame.Position = UDim2.new(0.5, -220, 0.5, -160)
    MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 12)
    MainCorner.Parent = MainFrame

    local MainStroke = Instance.new("UIStroke")
    MainStroke.Thickness = 2
    MainStroke.Color = Color3.fromRGB(255, 90, 0)
    MainStroke.Parent = MainFrame

    local hubVisible = true
    FloatBtn.MouseButton1Click:Connect(function()
        hubVisible = not hubVisible
        MainFrame.Visible = hubVisible
    end)

    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainFrame

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 12)
    TopCorner.Parent = TopBar

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -50, 1, 0)
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = "🔥MAP DESTROYER [MADE BY AYANUU] ONLY FOR LIFETOGETHER🔥"
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 11
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TopBar

    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 26, 0, 26)
    CloseBtn.Position = UDim2.new(1, -34, 0, 7)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
    CloseBtn.Text = "✕"
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 12
    CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.Parent = TopBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 6)
    CloseCorner.Parent = CloseBtn

    CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

    local TabHeader = Instance.new("Frame")
    TabHeader.Size = UDim2.new(1, -20, 0, 35)
    TabHeader.Position = UDim2.new(0, 10, 0, 48)
    TabHeader.BackgroundTransparency = 1
    TabHeader.Parent = MainFrame

    local TabListLayout = Instance.new("UIListLayout")
    TabListLayout.FillDirection = Enum.FillDirection.Horizontal
    TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 8)
    TabListLayout.Parent = TabHeader

    local PagesContainer = Instance.new("Folder")
    PagesContainer.Name = "PagesContainer"
    PagesContainer.Parent = MainFrame

    local Tabs = {}
    local Pages = {}
    local firstTab = true

    local function CreateTab(tabName)
        local TabBtn = Instance.new("TextButton")
        TabBtn.Size = UDim2.new(0, 130, 1, 0)
        TabBtn.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
        TabBtn.Text = tabName
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextSize = 12
        TabBtn.TextColor3 = Color3.fromRGB(170, 170, 170)
        TabBtn.Parent = TabHeader

        local TabCorner = Instance.new("UICorner")
        TabCorner.CornerRadius = UDim.new(0, 8)
        TabCorner.Parent = TabBtn

        local Page = Instance.new("ScrollingFrame")
        Page.Size = UDim2.new(1, -20, 1, -95)
        Page.Position = UDim2.new(0, 10, 0, 88)
        Page.BackgroundTransparency = 1
        Page.BorderSizePixel = 0
        Page.ScrollBarThickness = 4
        Page.Visible = false
        Page.Parent = PagesContainer

        local PageLayout = Instance.new("UIListLayout")
PageLayout.Parent = Page
PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
PageLayout.Padding = UDim.new(0, 8)
PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 10)
end)
TabBtn.MouseButton1Click:Connect(function()
for _, p in pairs(Pages) do p.Visible = false end
for _, t in pairs(Tabs) do
t.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
t.TextColor3 = Color3.fromRGB(170, 170, 170)
end
Page.Visible = true
TabBtn.BackgroundColor3 = Color3.fromRGB(255, 90, 0)
TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
end)
table.insert(Tabs, TabBtn)
table.insert(Pages, Page)
if firstTab then
firstTab = false
Page.Visible = true
TabBtn.BackgroundColor3 = Color3.fromRGB(255, 90, 0)
TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
end
return Page
end
-- Tabs Initialize
local Tab1_Page = CreateTab("Tab 1")
local Tab2_Page = CreateTab("Tab 2")
local Tab3_Page = CreateTab("Tab 3")
local function AddInfoBox(parentPage, infoText)
local InfoFrame = Instance.new("Frame")
InfoFrame.Size = UDim2.new(1, -10, 0, 36)
InfoFrame.BackgroundColor3 = Color3.fromRGB(35, 30, 25)
InfoFrame.Parent = parentPage
local InfoCorner = Instance.new("UICorner")
InfoCorner.CornerRadius = UDim.new(0, 8)
InfoCorner.Parent = InfoFrame
local InfoLabel = Instance.new("TextLabel")
InfoLabel.Size = UDim2.new(1, -10, 1, 0)
InfoLabel.Position = UDim2.new(0, 5, 0, 0)
InfoLabel.BackgroundTransparency = 1
InfoLabel.Text = infoText
InfoLabel.Font = Enum.Font.GothamBold
InfoLabel.TextSize = 10
InfoLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
InfoLabel.TextWrapped = true
InfoLabel.Parent = InfoFrame
end
AddInfoBox(Tab1_Page, "Welcome to MAP DESTROYER! Select your options below.")
end
-- Key checking logic fixed to MAP DESTROYER
SubmitBtn.MouseButton1Click:Connect(function()
local enteredKey = KeyBox.Text
if enteredKey == "MAP DESTROYER" then
LoadMainHub()
else
SubmitBtn.Text = "❌ Invalid Key!"
task.delay(1.5, function() SubmitBtn.Text = "Submit Key" end)
end
end)
