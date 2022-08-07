RegisterCommand('vehicle', function(source,args)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local carName = args[1]
    CreateVehicle(carName, coords.x + 2, coords.y, coords.z, 120, true)
end)