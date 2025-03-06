local sha = loadstring(game:HttpGet('https://raw.githubusercontent.com/skidvape/cfgGuard/refs/heads/main/libs/sha.lua'))()
local rbxanalytics: RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local cfgkeys = {
    clientkeys = {}
}
shared.cfgkeys = cfgkeys

cfgkeys.new = function()
    local user = rbxanalytics:GetClientId()
    local identifier = tostring(math.random(1,9999999))
    local key = sha.sha256(identifier)
    cfgkeys.clientkeys[user] = 'CFGKEY-'..key
    writefile('cfgkey.lua', cfgkeys.clientkeys[user])
    return key
end
cfgkeys.get = function(rbxanalytics: RbxAnalyticsService)
    writefile('keys.lua', tostring(cfgkeys.clientkeys[rbxanalytics:GetClientId()]))
    return cfgkeys.clientkeys[rbxanalytics:GetClientId()]
end

return cfgkeys