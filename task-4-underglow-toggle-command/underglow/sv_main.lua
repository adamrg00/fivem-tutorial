RegisterCommand('underglow', function(source, args)
    local ped = GetPlayerPed(source)
    local vehicle = GetVehiclePedIsIn(ped)
    if vehicle then -- This line checks that the ped is in a vehicle
        local vehicleNetId = NetworkGetNetworkIdFromEntity(vehicle)
        if args[1] == 'on' then
            TriggerClientEvent('vehicle-underglow-on', source, vehicleNetId)
        elseif args[1] == 'off' then
            TriggerClientEvent('vehicle-underglow-off', source, vehicleNetId)
        else
            print('no argument specified to underglow command')
        end
    else
        print('Player Not In Vehicle')
    end
  end)