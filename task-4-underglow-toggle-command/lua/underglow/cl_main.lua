RegisterNetEvent('vehicle-underglow-on', function(vehicleNetId)
    local src = source
    local vehicle = NetToVeh(vehicleNetId)
    for i = 0,3 do
        SetVehicleNeonLightEnabled(vehicle, i, true)
    end
    SetVehicleNeonLightsColour(vehicle, 255, 150, 0)
end)

RegisterNetEvent('vehicle-underglow-off', function(vehicleNetId)
    local src = source
    local vehicle = NetToVeh(vehicleNetId)
    for i = 0,3 do
        SetVehicleNeonLightEnabled(vehicle, i, false)
    end
end)