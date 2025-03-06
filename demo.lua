local Players: Players = game:GetService("Players")
local cfgkeys = loadstring(game:HttpGet('https://raw.githubusercontent.com/skidvape/cfgGuard/refs/heads/main/keys.lua'))()
cfgkeys.clientkeys = {
    clientididentifier = 'key-here'
}

if not string.match(getgenv().cfgkey, cfgkeys.get()) then
    return Players.LocalPlayer:Kick('haha cfgguard > you')
end