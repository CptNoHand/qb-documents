local QBCore = exports['qb-core']:GetCoreObject()

local hiddencoords = vector3(1272.15, -1711.00, 54.77)
local onDuty = 0

QBCore.Functions.CreateCallback('> qb-documents:getlocation', function(source, cb)
    cb(hiddencoords)
end)

QBCore.Functions.CreateCallback('> qb-documents:getCops', function(source, cb)
    cb(getCops())
end)

function getCops()
    local Players = QBCore.Functions.GetPlayers()
    onDuty = 0
    return 5
end

RegisterServerEvent("> qb-documents:GiveItem")
AddEventHandler("> qb-documents:GiveItem", function(x, y, z)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('governfiles', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['governfiles'], "add")
end)

RegisterNetEvent('> qb-documents:updatetable')
AddEventHandler('> qb-documents:updatetable', function(bool)
    TriggerClientEvent('> qb-documents:synctable', -1, bool)
end)

RegisterServerEvent("> qb-documents:syncMission")
AddEventHandler("> qb-documents:syncMission", function(missionData)
    local missionData = missionData
    TriggerClientEvent('> qb-documents:syncMissionClient', -1, missionData)
end)

RegisterServerEvent("> qb-documents:delivery")
AddEventHandler("> qb-documents:delivery", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local check = Player.Functions.GetItemByName('governfiles')
    local multiply = math.random(2, 4)

    if Player.Functions.GetItemByName("governfiles") then
        TriggerClientEvent("QBCore:Notify", src, string.format("You have sold the information!"),"success", 5000)
        Player.Functions.AddMoney('cash', Config.reward * multiply )
        Player.Functions.RemoveItem('governfiles', 1)
        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["governfiles"], "remove")
    else
        TriggerClientEvent("QBCore:Notify", src, string.format("Who you trying to fool?!"), "error", 5000)
    end
end)


