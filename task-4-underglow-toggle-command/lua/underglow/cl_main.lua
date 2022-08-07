RegisterNetEvent('vehicle-underglow-on', function(vehicleNetId, r, g, b)
    local vehicle = NetToVeh(vehicleNetId)
    for i = 0,3 do
        SetVehicleNeonLightEnabled(vehicle, i, true)
    end
    SetVehicleNeonLightsColour(vehicle, r, g, b)
end)

RegisterNetEvent('vehicle-underglow-off', function(vehicleNetId)
    local vehicle = NetToVeh(vehicleNetId)
    for i = 0,3 do
        SetVehicleNeonLightEnabled(vehicle, i, false)
    end
end)