ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local xPlayer = ESX.GetPlayerFromId(source)

RegisterNetEvent('buyBlista')
AddEventHandler('buyBlista', function()
    local price = Config.PriceBlista
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('buyIssi2')
AddEventHandler('buyIssi2', function()
    local price = Config.PriceIssi2
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('buyAsea')
AddEventHandler('buyAsea', function()
    local price = Config.PriceAsea
    xPlayer.removeMoney(price)
end)
