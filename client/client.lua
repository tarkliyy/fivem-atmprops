---@diagnostic disable: undefined-global

if Config.UseESX then -- future system plan
    ESX = nil

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end)
end

function SpawnProp(name, x, y, z, h)
    local hash = GetHashKey(name)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(1)
    end

    local prop = CreateObject(hash, x, y, z, false, false, true)
    SetEntityHeading(prop, h)
    PlaceObjectOnGroundProperly(prop)
    FreezeEntityPosition(prop, true)
end

Citizen.CreateThread(function()
    for _, prop in pairs(Config.Props) do
        SpawnProp(prop.name, prop.coords.x, prop.coords.y, prop.coords.z, prop.coords.h)
    end
end)
