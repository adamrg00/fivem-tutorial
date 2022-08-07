CoolCars = {'adder', 'bjxl', 'zentorno', 'felon', 'Jackal'}


RegisterCommand('vehicle', function(source,args) 
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local carName
    if args[1] ~= nil then
        carName = args[1]
    else
        carName = CoolCars[math.random(1, #CoolCars)]
    end
    CreateVehicle(carName, coords.x + 2, coords.y, coords.z, GetEntityHeading(ped), true)
end)