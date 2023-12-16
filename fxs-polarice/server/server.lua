local QBCore = exports[Config.CoreSettings.Core.Core]:GetCoreObject()


RegisterNetEvent('fxs-polarice:server:blackcoffee', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.RemoveItem(Config.coffebeans, 1)
    Player.Functions.AddItem(Config.CoffeeBlack, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["blackcoffee"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["coffebeans"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["emptyglass"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:ecola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.ECola, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["ecola"], "add")
end)



RegisterNetEvent('fxs-polarice:server:glass', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.CoffeeEmptyGlass, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["emptyglass"], "add")
end)

RegisterNetEvent('fxs-polarice:server:Coffeebeans', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.coffebeans, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["coffebeans"], "add")
end)

RegisterNetEvent('fxs-polarice:server:milk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["milk"], "add")
end)

RegisterNetEvent('fxs-polarice:server:SmoothieCup', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.SmoothieCup, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "add")
end)

RegisterNetEvent('fxs-polarice:server:lemonade', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.lemonade, 1)
    Player.Functions.RemoveItem(Config.softdrinkscup, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["lemonade"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["softdrinkscup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:orangesoda', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.orangesoda, 1)
    Player.Functions.RemoveItem(Config.softdrinkscup, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["orangesoda"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["softdrinkscup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:icecreamcone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.icecreamcone, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "add")
end)

RegisterNetEvent('fxs-polarice:server:chocolateicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.icecreamcone, 1)
    Player.Functions.RemoveItem(Config.chocolate, 1)
    Player.Functions.AddItem(Config.chocolateicecream, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["chocolateicecream"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["chocolate"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:minticecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.icecreamcone, 1)
    Player.Functions.RemoveItem(Config.mint, 1)
    Player.Functions.AddItem(Config.minticecream, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["minticecream"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["mint"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:mintsmoothie', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.mint, 1)
    Player.Functions.RemoveItem(Config.SmoothieCup, 1)
    Player.Functions.AddItem(Config.mintsmoothie, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["mintsmoothie"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["mint"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:strawberrysmoothie', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.strawberry, 1)
    Player.Functions.RemoveItem(Config.SmoothieCup, 1)
    Player.Functions.AddItem(Config.strawberrysmoothie, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["strawberrysmoothie"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["strawberry"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:cookiedoughsmoothie', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.cookiedough, 1)
    Player.Functions.RemoveItem(Config.SmoothieCup, 1)
    Player.Functions.AddItem(Config.cookiedoughsmoothie, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cookiedoughsmoothie"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cookiedough"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:vanillasmoothie', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.vanilla, 1)
    Player.Functions.RemoveItem(Config.SmoothieCup, 1)
    Player.Functions.AddItem(Config.vanillasmoothie, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vanillasmoothie    "], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vanilla"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:chocolatesmoothie', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.chocolate, 1)
    Player.Functions.RemoveItem(Config.SmoothieCup, 1)
    Player.Functions.AddItem(Config.chocolatesmoothie, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["chocolatesmoothie    "], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["chocolate"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smoothiecup"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:softdrinkscup', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.softdrinkscup, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["softdrinkscup"], "add")
end)

RegisterNetEvent('fxs-polarice:server:cola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.softdrinkscup, 1)
    Player.Functions.AddItem(Config.ECola, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["ecola"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["softdrinkscup"], "remove")
end)


RegisterNetEvent('fxs-polarice:server:strawberryicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.icecreamcone, 1)
    Player.Functions.RemoveItem(Config.strawberry, 1)
    Player.Functions.AddItem(Config.strawberryicecream, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["strawberryicecream"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["strawberry"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:vanillaicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.icecreamcone, 1)
    Player.Functions.RemoveItem(Config.vanilla, 1)
    Player.Functions.AddItem(Config.vanillaicecream, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vanillaicecream"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vanilla"], "remove")
end)


RegisterNetEvent('fxs-polarice:server:cookiedoughicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.icecreamcone, 1)
    Player.Functions.RemoveItem(Config.cookiedough, 1)
    Player.Functions.AddItem(Config.cookiedoughicecream, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cookiedoughicecream"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["icecreamcone"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cookiedough"], "remove")
end)

RegisterNetEvent('fxs-polarice:server:coffeewithmilk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.RemoveItem(Config.milk, 1)
    Player.Functions.AddItem(Config.CoffeeWithMilk, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["coffeewithmilk"], "add")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["milk"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["emptyglass"], "remove")
end)


RegisterNetEvent('fxs-polarice:server:cola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.cola, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["ecola"], "add")
end)


QBCore.Functions.CreateUseableItem('blackcoffee', function(source) 
	TriggerClientEvent('fxs-polarice:CraftCoffeeMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, ("success"), "coffeeblack", 1500)
end)

RegisterNetEvent('fxs-polarice:CoffeeMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBlack) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.RemoveItem(Config.milk, 1)
end)

QBCore.Functions.CreateUseableItem('coffeewithmilk', function(source) 
	TriggerClientEvent('fxs-polarice:CraftCoffeeMilkMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, ("success"), "coffeewithmilk", 1500)
end)

RegisterNetEvent('fxs-polarice:CoffeeMilkMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeWithMilk) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.RemoveItem(Config.milk, 1)
    
end)

QBCore.Functions.CreateUseableItem('ecola', function(source) 
	TriggerClientEvent('fxs-polarice:ecola', source) 
    TriggerClientEvent('QBCore:Notify', source, ("success"), "ecola", 1500)
end)

RegisterNetEvent('fxs-polarice:ecola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.cola) do
        Player.Functions.AddItem(v, 1)
        Player.Functions.AddItem(Config.ECola, 1)
    end 
    
end)

RegisterNetEvent('fxs-polarice:emptyglass', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeEmptyGlass) do
        Player.Functions.AddItem(v, 1)
    end     
end)


QBCore.Functions.CreateCallback('fxs-polarice:itemcheck', function(source, cb, item)
	local xPlayer = QBCore.Functions.GetPlayer(source)
    local itemcount = xPlayer.Functions.GetItemByName(item)
	if itemcount ~= nil then
		cb(true)
	else
        cb(false)
	end
end)

RegisterServerEvent("fxs-polarice:bill:player")
AddEventHandler("fxs-polarice:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'polarice' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('fxs-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

local foodTable = {
    ["vanillaicecream"]             = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
    ["chocolateicecream"]           = { emote = "icecream2", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
    ["strawberryicecream"]          = { emote = "icecream3", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
    ["minticecream"]                = { emote = "icecream4", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
    ["cookiedoughicecream"]         = { emote = "icecream5", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30,50), }},
    ["vanillasmoothie"]             = { emote = "smoothie5", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["chocolatesmoothie"]           = { emote = "smoothie1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["strawberrysmoothie"]          = { emote = "smoothie3", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["mintsmoothie"]                = { emote = "smoothie2", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["cookiedoughsmoothie"]         = { emote = "smoothie4", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["coffeewithmilk"]              = { emote = "drink1", canRun =    false,    time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["coffeeblack"]                 = { emote = "drink2", canRun =  false,    time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["cola"]                        = { emote = "drink3", canRun =  false,    time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["lemonade"]                    = { emote = "drink4", canRun = false,    time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
    ["orangesoda"]                  = { emote = "drink5", canRun = false,    time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
}

local emoteTable = {
    ["icecream1"] = {"mp_player_inteat@burger",                     "mp_player_int_eat_burger",     "Vanilla Ice Cream",            AnimationOptions = { Prop = "bzzz_icecream_cherry",             PropBone = 18905, PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["icecream2"] = {"mp_player_inteat@burger",                     "mp_player_int_eat_burger",     "Chocolate Ice Cream",          AnimationOptions = { Prop = "bzzz_icecream_chocolate",          PropBone = 18905, PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["icecream3"] = {"mp_player_inteat@burger",                     "mp_player_int_eat_burger",     "Strawberry Ice Cream",         AnimationOptions = { Prop = "bzzz_icecream_cherry",             PropBone = 18905, PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["icecream4"] = {"mp_player_inteat@burger",                     "mp_player_int_eat_burger",     "Mint Ice Cream",               AnimationOptions = { Prop = "bzzz_icecream_cherry",             PropBone = 18905, PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["icecream5"] = {"mp_player_inteat@burger",                     "mp_player_int_eat_burger",     "Cookie Dough Ice Cream",       AnimationOptions = { Prop = "bzzz_icecream_chocolate",          PropBone = 18905, PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["smoothie1"] = {"mp_player_intdrink",                          "loop_bottle",                  "Chocolate Smoothie",           AnimationOptions = { Prop = "beanmachine_cup3",                 PropBone = 18905, PropPlacement = {0.0, -0.11, 0.07, -118.0, -121.0, 37.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["smoothie2"] = {"mp_player_intdrink",                          "loop_bottle",                  "Mint Smoothie",                AnimationOptions = { Prop = "beanmachine_cup3",                 PropBone = 18905, PropPlacement = {0.0, -0.11, 0.07, -118.0, -121.0, 37.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["smoothie3"] = {"mp_player_intdrink",                          "loop_bottle",                  "Strawberry Smoothie",          AnimationOptions = { Prop = "beanmachine_cup3",                 PropBone = 18905, PropPlacement = {0.0, -0.11, 0.07, -118.0, -121.0, 37.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["smoothie4"] = {"mp_player_intdrink",                          "loop_bottle",                  "Cookie Dough Smoothie",        AnimationOptions = { Prop = "beanmachine_cup3",                 PropBone = 18905, PropPlacement = {0.0, -0.11, 0.07, -118.0, -121.0, 37.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["smoothie5"] = {"mp_player_intdrink",                          "loop_bottle",                  "Vanilla Smoothie",             AnimationOptions = { Prop = "beanmachine_cup3",                 PropBone = 18905, PropPlacement = {0.0, -0.11, 0.07, -118.0, -121.0, 37.0}, EmoteMoving = true, EmoteLoop = true, }},
    ["drink1"] = {"amb@world_human_drinking@coffee@male@idle_a",    "idle_c",                       "Coffee With Milk",             AnimationOptions = { Prop = "p_amb_coffeecup_01",               PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},           EmoteMoving = true, EmoteLoop = true, }},
    ["drink2"] = {"amb@world_human_drinking@coffee@male@idle_a",    "idle_c",                       "Coffee With Milk",             AnimationOptions = { Prop = "p_amb_coffeecup_01",               PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},           EmoteMoving = true, EmoteLoop = true, }},
    ["drink3"] = {"smo@milkshake_idle",                             "milkshake_idle_clip",          "Cola",                     AnimationOptions = { Prop = "prop_rpemotes_soda04",             PropBone = 28422, PropPlacement = {0.0470, 0.0040, -0.0600, -88.0263, -25.0367, -27.3898}, EmoteMoving = true, EmoteLoop = true, }},
    ["drink4"] = {"smo@milkshake_idle",                             "milkshake_idle_clip",          "Lemonade",                     AnimationOptions = { Prop = "prop_rpemotes_soda04",             PropBone = 28422, PropPlacement = {0.0470, 0.0040, -0.0600, -88.0263, -25.0367, -27.3898}, EmoteMoving = true, EmoteLoop = true, }},
    ["drink5"] = {"smo@milkshake_idle",                             "milkshake_idle_clip",          "Orange Soda",                  AnimationOptions = { Prop = "prop_rpemotes_soda04",             PropBone = 28422, PropPlacement = {0.0470, 0.0040, -0.0600, -88.0263, -25.0367, -27.3898}, EmoteMoving = true, EmoteLoop = true, }},
}

for k, v in pairs(foodTable) do TriggerEvent("jim-consumables:server:syncAddItem", k, v) end
for k, v in pairs(emoteTable) do TriggerEvent("jim-consumables:server:syncAddEmote", k, v) end
