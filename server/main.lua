
exports['qbr-core']:CreateUseableItem("goldpan", function(source, item)
    local src = tonumber(source)
	TriggerClientEvent('dag_goldpanning:client:StartPaning', src, item.name)
end)


RegisterNetEvent("dag_goldpanning:server:search")
AddEventHandler("dag_goldpanning:server:search", function()
	local _source = source
	local User = exports['qbr-core']:GetPlayer(_source)	
    local item2 = "smallnugget"
    local item = "p_baitworm01x"
    local r = math.random(1,10)
    local goldover = math.random(1, 2)
    local goldover2 = 1
    local _source = source 
    if r < 2 then
		User.Functions.AddItem(item2, goldover)
        Wait(3000)
		TriggerClientEvent('QBCore:Notify', _source, 9,  Config.oro_encontrado, 3000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')

    elseif r >= 2 and 5 <= r then
		User.Functions.AddItem(item, goldover2)
        Wait(3000)
		TriggerClientEvent('QBCore:Notify', _source, 9,  Config.oro_encontrado2, 3000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
    else
		TriggerClientEvent('QBCore:Notify', _source, 9,  Config.oro_no_encontrado, 3000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
    end
end)
