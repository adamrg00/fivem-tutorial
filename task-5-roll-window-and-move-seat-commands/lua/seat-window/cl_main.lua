RegisterNetEvent('roll-down-window', function(vehNetId, windowIndex)
    local veh = NetToVeh(vehNetId)
    RollDownWindow(veh, windowIndex)
end)

RegisterNetEvent('roll-up-window', function(vehNetId, windowIndex)
    local veh = NetToVeh(vehNetId)
    RollUpWindow(veh, windowIndex)
end)
