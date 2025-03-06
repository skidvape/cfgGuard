local Players = game:GetService("Players")
local cfgkeys = loadstring(game:HttpGet('https://raw.githubusercontent.com/skidvape/cfgGuard/refs/heads/main/keys.lua'))()
cfgkeys.clientkeys = {
    identifier = 'key-here'
}

local Players: Players = game:GetService('Players')
local rbxanalytics: RbxAnalyticsService = game:GetService('RbxAnalyticsService')

if string.match(getgenv().cfgkey, cfgkeys.get()) then
    return nil
elseif not getgenv().cfgkey then
    return Players.LocalPlayer:Kick('die')
end