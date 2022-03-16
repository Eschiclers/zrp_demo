-- Obtenemos el objeto ZRP 
-- similar a lo que hacemos en ESX
ZRP = nil
local PlayerData = {} -- La información del jugador

-- Obtenemos el objeto ZRP del cliente
CreateThread(function()
  while ZRP == nil do
    TriggerEvent('zrp_framework:getSharedObject', function(obj) ZRP = obj end)
    Wait(0)
  end
  print("Objeto ZRP cargado")
end)

-- Obtenemos la información del jugador cuando es cargado
RegisterNetEvent('zrp_framework:playerLoaded')
AddEventHandler('zrp_framework:playerLoaded', function(playerData)
  PlayerData = playerData
  print("Información del jugador cargada")
end)