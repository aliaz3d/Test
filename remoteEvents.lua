local StarterGui = game:GetService("StarterGui")

--placeId are in this order.  Home, OnlineIsland, Hub, Wilderness Islands
if (game.PlaceId == 4872321990 and game.PlaceVersion ~= 1064) or (game.PlaceId == 5626342417 and game.PlaceVersion ~= 714) or (game.PlaceId == 5899156129 and game.PlaceVersion ~= 638) or (game.PlaceId == 9501318975 and game.PlaceVersion ~= 282) then
    updates = "😲 GUI might not function in this server 😲"
    StarterGui:SetCore("ChatMakeSystemMessage", {Color = Color3.fromRGB(250,0,0), Font = Enum.Font.SourceSansBold, TextSize = 18, Text = updates})
end

updates = "[Matt]: GUI Updated 2/11"

StarterGui:SetCore("ChatMakeSystemMessage", {Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18, Text = updates})

--- these items change all the dang time!
--hitMobEvent = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("eicpsr/qqsFOc")
sendTrade = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("qqnyeuwdgagBMfwbyixicqHARch/nylatIa")
addTrade = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("aketluznvhPipbCCgesjxuFz/aeFpiFlugu")
tradeAccept = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("aketluznvhPipbCCgesjxuFz/OrgoSiuXk")
openVending = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/awbQzpqXrjftoOyfalmHhc")
emptyItem = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/xNlidHwhoFznJtsyApztp")
refillItem = emptyItem
refillCoins = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/kvczdmhzxCvvUcqkqzpnqd")
takeCoins = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/gHQgkFr")
changeSettings = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/bczxrdRclzl")
closeVending = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("PryXyojusxwaxmfjccgnnbeEcALuho/KlxeYkgmexbwmgeiZKnPouVCslmrcmUve")
useNet = game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):FindFirstChild("Avzhds/ugalquksmgsjCkzcqplvgEypqc")
