RegisterCommand('underglow', function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local vehicle = GetVehiclePedIsIn(ped)
    if vehicle ~= 0 then -- This line checks that the ped is in a vehicle
        local vehNet = NetworkGetNetworkIdFromEntity(vehicle)
        if args[1] == 'on' then
            TriggerClientEvent('vehicle-underglow-on', src, vehNet)
        elseif args[1] == 'off' then
            TriggerClientEvent('vehicle-underglow-off', src, vehNet)
        else
            print('no argument specified to underglow command')
        end
    else
        print('Player Not In Vehicle')
    end
  end)