if not game:IsLoaded() then
game.Loaded:Wait()
end

repeat wait() 
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse

if not game.PlaceId == 9551640993 then return end-- mining sim

----these are what change-----
local whatWorld = "The Overworld"
local walk1 = Vector3.new(29, 6, 341)
local walk2 = Vector3.new(29, 6, 341)
local whatEgg = "50th Egg"
-------------------------------

local Player = game.Players.LocalPlayer
local PlayerGui = Player.PlayerGui
local Character = Player.Character
local Humanoid = Character.Humanoid

local function notification(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {Title=title; Text=text; Duration=duration;})
    local Player = game.Players.LocalPlayer
end

notification("Waiting", "on loading screen", 5)

repeat wait() until PlayerGui:FindFirstChild("LoadingGui") == nil

local function autoFactory()
    while wait() do
        local numbers = {1,2,3}
        for _,v in pairs(numbers) do
            game:GetService("ReplicatedStorage").Events.ClaimFactoryCraft:FireServer(v)
            task.wait(1)
            game:GetService("ReplicatedStorage").Events.StartFactoryCraft:FireServer("Crystals 4", v)
        end
        wait(451)
    end
end

local function autoGetBoosts()
    while wait() do
        game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Omega Lucky", 1)
        wait()
        game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Omega Lucky", 2)
        wait()
        game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Super Lucky", 1)
        wait()
        for i = 1,3 do
            game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Super Lucky", 2)
            wait()
        end
        for i = 1,2 do
            game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Lucky", 1)
            wait()
        end
        for i = 1,4 do
            game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer("Lucky", 2)
            wait()
        end
wait(1000)
    end
end
    
local function redeemSpins()
        while true do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ClaimSpinToWin"):FireServer()

            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuySpinToWin"):FireServer()

            task.wait(300)
        end
end

local function autoSpinToWin()
        while true do
    local amount = Player.PlayerGui.ScreenGui.SpinToWin.Frame.Container.Spins.Count.Text
    
    if amount ~= "0" then
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlaySpinToWin"):FireServer()
    
    end
    
    task.wait(5)
            end
end    

local function redeemGroupRewards()
    while true and task.wait(120) do
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("ClaimGroupBenefits"):InvokeServer()
    end
end

local function teleportToWorld(world)
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(world)
end

local function walkTo(pos)
    Humanoid:MoveTo(pos)
        Humanoid.MoveToFinished:Wait()
end

local function destroyAnimations(animation)
    animation:Destroy()
    PlayerGui.ScreenGui.Enabled = true
end

local function destroyHatch(hatchGui)
    hatchGui:Destroy()
    PlayerGui.ScreenGui.Enabled = true
end

local function autoHatchEgg(egg)
    while wait() do
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(egg, true, true)
    end
end

task.spawn(autoFactory)
task.spawn(autoGetBoosts)
task.spawn(redeemGroupRewards)
--task.spawn(redeemSpins)
--task.spawn(autoSpinToWin)

teleportToWorld(whatWorld)
task.wait(1)

walkTo(walk1) -- to the stairs
task.wait(5)
walkTo(walk2) -- to the egg

--game.Workspace.Camera.ChildAdded:Connect(destroyAnimations, animation)
--PlayerGui.ChildAdded:Connect(destroyHatch, hatchGui)

notification("Auto Egg", "is ON", 5)

setfpscap(20)

autoHatchEgg(whatEgg)
