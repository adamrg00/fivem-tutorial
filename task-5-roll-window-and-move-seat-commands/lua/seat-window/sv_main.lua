-- note: this script showcases a slightly different method of checking,
-- I will use both throughout this course as it is personal preference
-- and i find it beneficial to expose you to both!


-- There are more streamlined solutions to these commands, but I have gone for a more accessible solution.
-- e.g one could use string manipulation to avoid some of the if statements
RegisterCommand('seat', function(source, args)
    if args[1] == nil then print('No seat specified') return end
    local seat = tonumber(args[1])
    local src = source
    local ped = GetPlayerPed(src)
    local veh = GetVehiclePedIsIn(ped)
    if veh == 0 then print('Ped not in any vehicle') return end
    local pedAlreadyInSeat = GetPedInVehicleSeat(veh, seat)
    if DoesEntityExist(pedAlreadyInSeat) then print('Someone is already in this seat!') return end
    SetPedIntoVehicle(ped, veh, seat)
end)

RegisterCommand('window', function(source, args)
    if args[1] == nil or (args[1] ~= "up" and args[1] ~= "down") then print('Roll up or down not specified') return end
    local src = source
    local ped = GetPlayerPed(src)
    local veh = GetVehiclePedIsIn(ped)
    if veh == 0 then print('Ped not in any vehicle') return end
    local vehNet = NetworkGetNetworkIdFromEntity(veh)
    if args[2] == "all" then
        if args[1] == 'up' then
            for i = 0, 5 do
                TriggerClientEvent('roll-up-window', -1, vehNet, i)
            end
        elseif args[1] == 'down' then
            for i = 0, 5 do
                TriggerClientEvent('roll-down-window', -1, vehNet, i)
            end
        end
    else
        local window = GetWindowPedIsByFromVehicle(ped, veh)
        if args[1] == "up" then
            TriggerClientEvent('roll-up-window', -1, vehNet, window)
        elseif args[1] == "down" then
            TriggerClientEvent('roll-down-window', -1, vehNet, window)
        end
    end
end)

function GetWindowPedIsByFromVehicle(ped, vehicle)
    for i = -1, 6 do
        if GetPedInVehicleSeat(vehicle, i) == ped then
            return i + 1 -- (This is the pattern between seats and windows)
        end
    end
end