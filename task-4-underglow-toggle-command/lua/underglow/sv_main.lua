RegisterCommand('underglow', function(source, args)
    local src = source
    local ped = GetPlayerPed(src)
    local vehicle = GetVehiclePedIsIn(ped)
    if vehicle ~= 0 then -- This line checks that the ped is in a vehicle
        local vehNet = NetworkGetNetworkIdFromEntity(vehicle)
        if args[1] == 'on' then
            if args[2] == nil then args[2] = 2 end
            if args[3] == nil then args[3] = 21 end
            if args[4] == nil then args[4] = 255 end
            TriggerClientEvent('vehicle-underglow-on', src, vehNet, args[2], args[3], args[4])
        elseif args[1] == 'off' then
            TriggerClientEvent('vehicle-underglow-off', src, vehNet)
        else
            print('no argument specified to underglow command')
        end
    else
        print('Player Not In Vehicle')
    end
  end)