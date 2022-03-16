-- Obtenemos el objeto ZRP 
-- similar a lo que hacemos en ESX
ZRP = nil

-- Obtenemos el objeto ZRP del servidor
TriggerEvent('zrp_framework:getSharedObject', function(obj)
  ZRP = obj
end)
