QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterCommand("bük", function(source)
      local xPlayer = QBCore.Functions.GetPlayer(source)
      TriggerClientEvent("dri:pencere", xPlayer.PlayerData.source, true)
end)

RegisterCommand("yeter", function(source)
      local xPlayer = QBCore.Functions.GetPlayer(source) 
        TriggerClientEvent("dri:pencere", xPlayer.PlayerData.source, false)
end)

QBCore.Functions.CreateUseableItem('turemeasasi', function(source) 
      local xPlayer = QBCore.Functions.GetPlayer(source) 
      TriggerClientEvent(("dri:pencere"), xPlayer.PlayerData.source, true)
end)


QBCore.Functions.CreateUseableItem('ozuriksiri', function(source) 
      local xPlayer = QBCore.Functions.GetPlayer(source) 
      TriggerClientEvent(("dri:pencere"), xPlayer.PlayerData.source, false)
end)