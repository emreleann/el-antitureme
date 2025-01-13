QBCore = exports['qb-core']:GetCoreObject()

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
      TriggerClientEvent("qb-input:showInput", source)
end)


QBCore.Functions.CreateUseableItem('ozuriksiri', function(source) 
      local xPlayer = QBCore.Functions.GetPlayer(source) 
      TriggerClientEvent(("dri:pencere"), xPlayer.PlayerData.source, false)
      QBCore.Functions.Notify("Hoş değil, bir daha olmasın gülüm" , "error")
end)

RegisterNetEvent('dri:triggerPencere', function(id)
      print("Gelen ID: ", id)  
      local targetPlayer = QBCore.Functions.GetPlayer(tonumber(id)) 
      if targetPlayer then
          print("tureme penceresi yollandi ")
          TriggerClientEvent("dri:pencere", targetPlayer.PlayerData.source, true)
      else
          print("Oyuncu bulunamadı! ID: " .. id)
      end
  end)