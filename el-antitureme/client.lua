QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent("dri:pencere", function(display)
  
  SendNUIMessage({
      type = "ui", 
      display = display 
  })

  
  if display then
      SetNuiFocus(false, false)
  else
      SetNuiFocus(false, false)
      QBCore.Functions.Notify("Hoş değil, bir daha olmasın gülüm" , "error")
  end
end)

RegisterNetEvent('qb-input:showInput', function()
 
  local result = exports['qb-input']:ShowInput({
      header = "ID gir",
      submitText = "Onayla",
      inputs = {
          {
              text = "ID",
              name = "id",
              type = "number",
              isRequired = true
          }
      }
  })

  
  if result then
      local id = result.id
     
      TriggerServerEvent("dri:triggerPencere", id)
      QBCore.Functions.Notify("Yolladım lavuga", "success")
  end
end)
