local sha = loadstring(game:HttpGet('https://raw.githubusercontent.com/skidvape/cfgGuard/refs/heads/main/libs/sha.lua'))()
local rbxanalytics: RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local user = rbxanalytics:GetClientId()
local cfgkeys = {
    clientkeys = {}
}
shared.cfgkeys = cfgkeys

cfgkeys.new = function()
    local identifier = tostring(math.random(1,9999999))
    local key = sha.sha256(identifier)
    local fullkey = 'CFGKEY-'..key
    cfgkeys.clientkeys[user] = fullkey
    writefile('cfgkey.lua', cfgkeys.clientkeys[user])
    return fullkey
end
cfgkeys.get = function()
    return cfgkeys.clientkeys[user]
end

return cfgkeys