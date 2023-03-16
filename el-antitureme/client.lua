QBCore = nil 

Citizen.CreateThread(function()
   while QBCore == nil do
   	TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
   	Citizen.Wait(30) -- Saniye Bekletme
   end
end)

RegisterNetEvent("dri:pencere")
AddEventHandler("dri:pencere", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)