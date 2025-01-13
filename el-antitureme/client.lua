QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent("dri:pencere", function(display)
  -- NUI mesajını gönder
  SendNUIMessage({
      type = "ui", -- NUI tipi
      display = display -- NUI'nin görüntülenip görüntülenmeyeceği
  })

  -- Eğer display true ise UI'yi aktif et
  if display then
      SetNuiFocus(false, false) -- NUI'ye fokuslan
  else
      SetNuiFocus(false, false) -- Fokus kaldır
      QBCore.Functions.Notify("Hoş değil, bir daha olmasın gülüm" , "error")
  end
end)

RegisterNetEvent('qb-input:showInput', function()
  -- Input penceresini göster
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

  -- Eğer bir ID girildiyse
  if result then
      local id = result.id
      -- ID'yi kullanarak belirtilen oyuncuya event gönder
      TriggerServerEvent("dri:triggerPencere", id)
      QBCore.Functions.Notify("Yolladım lavuga", "success")
  end
end)