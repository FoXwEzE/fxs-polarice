local QBCore = exports[Config.CoreSettings.Core.Core]:GetCoreObject()
local onDuty = false
local clean = false
local client = false
local status = false
local smallblip = false
local bigblip = false
local bliptable = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerPed = PlayerPedId()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.CoreSettings.Job.Name then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

-- Polar ice cream

RegisterNetEvent("fxs-polarice:duty")
AddEventHandler("fxs-polarice:duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("fxs-polarice:tray")
AddEventHandler("fxs-polarice:tray", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Counter")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Counter", {
        maxweight = 50000,
        slots = 7,
    })
end)

RegisterNetEvent("fxs-polarice:tray2")
AddEventHandler("fxs-polarice:tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Counter2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Counter2", {
        maxweight = 50000,
        slots = 7,
    })
end)


RegisterNetEvent("fxs-polarice:storge")
AddEventHandler("fxs-polarice:storge", function()
    if onDuty then
        TriggerEvent("inventory:client:SetCurrentStash", "storge")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "storge", {
            maxweight = 250000,
            slots = 40,
        })
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("qb:polarice:shop")
AddEventHandler("qb:polarice:shop", function()
    if onDuty then
        local PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData.job and PlayerData.job.name == Config.CoreSettings.Job.Name then 
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "polarice", Config.Shop)
        end
    else 
        QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

--CleanFace
RegisterNetEvent("fxs-polarice:client:clean")
AddEventHandler("fxs-polarice:client:clean", function()
    QBCore.Functions.Progressbar("clean", 'You Clean Your Face', Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@michael@wash_face",
        anim = "loop_michael",
        flags = 49,
    }, {}, {}, function() -- Done
            clean = true
        QBCore.Functions.Notify("Face Clean", "success")
    end, function()
        QBCore.Functions.Notify(("error"), "error")
    end)
end)

RegisterNetEvent("fxs-polarice:client:blackcoffee")
AddEventHandler("fxs-polarice:client:blackcoffee", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("", "Prepare Black Coffee", Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:blackcoffee')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify(("You Need items"), "error")
                end
            end, Config.CoffeeEmptyGlass,Config.coffebeans)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:cola")
AddEventHandler("fxs-polarice:client:cola", function()
    if onDuty then
                    QBCore.Functions.Progressbar("", "Prepare Coca cola", Config.CoreSettings.Progressbar.Drinks, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:ecola')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end,condig.softdrinkscup )
                else
                    QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                end
            end)

            RegisterNetEvent("fxs-polarice:client:icecreamcone")
AddEventHandler("fxs-polarice:client:icecreamcone", function()
    if onDuty then
                    QBCore.Functions.Progressbar("", "Get Ice Cream Cone", Config.CoreSettings.Progressbar.Drinks, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:icecreamcone')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                end
            end)

            RegisterNetEvent("fxs-polarice:client:softdrinkscup")
AddEventHandler("fxs-polarice:client:softdrinkscup", function()
    if onDuty then
                    QBCore.Functions.Progressbar("", "Prepare Soft Drinks Cup", Config.CoreSettings.Progressbar.Drinks, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:softdrinkscup')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                end
            end)

            RegisterNetEvent("fxs-polarice:client:lemonade")
            AddEventHandler("fxs-polarice:client:lemonade", function()
                if onDuty then
                        QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                            if data then
                                QBCore.Functions.Progressbar("cocacola", "Prepare Lemonade", Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "amb@prop_human_bbq@male@base",
                                    anim = "base",
                                    flags = 8,
                                }, {}, {}, function() -- Done
                                        TriggerServerEvent('fxs-polarice:server:lemonade')
                                    QBCore.Functions.Notify(("success"), "success")
                                end, function()
                                    QBCore.Functions.Notify(("cancel"), "error")
                                end)
                            else
                                QBCore.Functions.Notify("You Need items", "error")
                            end
                        end,Config.softdrinkscup)
                else
                    QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                end
            end)

            RegisterNetEvent("fxs-polarice:client:orangesoda")
            AddEventHandler("fxs-polarice:client:orangesoda", function()
                if onDuty then
                        QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                            if data then
                                QBCore.Functions.Progressbar("cocacola", "Prepare Orange Soda", Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "amb@prop_human_bbq@male@base",
                                    anim = "base",
                                    flags = 8,
                                }, {}, {}, function() -- Done
                                        TriggerServerEvent('fxs-polarice:server:orangesoda')
                                    QBCore.Functions.Notify(("success"), "success")
                                end, function()
                                    QBCore.Functions.Notify(("cancel"), "error")
                                end)
                            else
                                QBCore.Functions.Notify("You Need items", "error")
                            end
                        end,Config.softdrinkscup)
                else
                    QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                end
            end)

            RegisterNetEvent("fxs-polarice:client:glass")
            AddEventHandler("fxs-polarice:client:glass", function()
                if onDuty then
                                QBCore.Functions.Progressbar("", "Buying Glass", Config.CoreSettings.Progressbar.Buy, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "amb@prop_human_bbq@male@base",
                                    anim = "base",
                                    flags = 8,
                                }, {}, {}, function() -- Done
                                        TriggerServerEvent('fxs-polarice:server:glass')
                                    QBCore.Functions.Notify(("success"), "success")
                                end, function()
                                    QBCore.Functions.Notify(("cancel"), "error")
                                end)
                            else
                                QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                            end
                        end)


                        RegisterNetEvent("fxs-polarice:client:milk")
            AddEventHandler("fxs-polarice:client:milk", function()
                if onDuty then
                                QBCore.Functions.Progressbar("", "Buying Milk", Config.CoreSettings.Progressbar.Buy, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "amb@prop_human_bbq@male@base",
                                    anim = "base",
                                    flags = 8,
                                }, {}, {}, function() -- Done
                                        TriggerServerEvent('fxs-polarice:server:milk')
                                    QBCore.Functions.Notify(("success"), "success")
                                end, function()
                                    QBCore.Functions.Notify(("cancel"), "error")
                                end)
                            else
                                QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                            end
                        end)

                        RegisterNetEvent("fxs-polarice:client:Coffeebeans")
                        AddEventHandler("fxs-polarice:client:Coffeebeans", function()
                            if onDuty then
                                            QBCore.Functions.Progressbar("", "Buying Coffee Beans", Config.CoreSettings.Progressbar.Buy, false, true, {
                                                disableMovement = true,
                                                disableCarMovement = true,
                                                disableMouse = false,
                                                disableCombat = true,
                                            }, {
                                                animDict = "amb@prop_human_bbq@male@base",
                                                anim = "base",
                                                flags = 8,
                                            }, {}, {}, function() -- Done
                                                    TriggerServerEvent('fxs-polarice:server:Coffeebeans')
                                                QBCore.Functions.Notify(("success"), "success")
                                            end, function()
                                                QBCore.Functions.Notify(("cancel"), "error")
                                            end)
                                        else
                                            QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                                        end
                                    end)   
                                    
                                    RegisterNetEvent("fxs-polarice:client:SmoothieCup")
                                    AddEventHandler("fxs-polarice:client:SmoothieCup", function()
                                        if onDuty then
                                                        QBCore.Functions.Progressbar("", "Buying Smoothie Cup", Config.CoreSettings.Progressbar.Buy, false, true, {
                                                            disableMovement = true,
                                                            disableCarMovement = true,
                                                            disableMouse = false,
                                                            disableCombat = true,
                                                        }, {
                                                            animDict = "amb@prop_human_bbq@male@base",
                                                            anim = "base",
                                                            flags = 8,
                                                        }, {}, {}, function() -- Done
                                                                TriggerServerEvent('fxs-polarice:server:SmoothieCup')
                                                            QBCore.Functions.Notify(("success"), "success")
                                                        end, function()
                                                            QBCore.Functions.Notify(("cancel"), "error")
                                                        end)
                                                    else
                                                        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
                                                    end
                                                end)  

RegisterNetEvent("fxs-polarice:client:cola")
AddEventHandler("fxs-polarice:client:cola", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("cocacola", "Prepare Coca Cola", Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:cola')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need items", "error")
                end
            end,Config.softdrinkscup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:blackcoffeemlik")
AddEventHandler("fxs-polarice:client:blackcoffeemlik", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("blackcoffeemilk", "Prepare Coffee with milk", Config.CoreSettings.Progressbar.ProgressbarTime, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:coffeewithmilk')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need items", "error")
                end
            end, Config.CoffeeEmptyGlass, Config.milk)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:chocolateicecream")
AddEventHandler("fxs-polarice:client:chocolateicecream", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("chocolateicecream", "Prepare Chocolate Ice Cream", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:chocolateicecream')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need items", "error")
                end
            end, Config.chocolate, Config.icecreamcone)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:minticecream")
AddEventHandler("fxs-polarice:client:minticecream", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("minticecream", "Prepare Mint Ice Cream", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:minticecream')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need items", "error")
                end
            end, Config.icecreamcone , Config.mint)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:strawberryicecream")
AddEventHandler("fxs-polarice:client:strawberryicecream", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("strawberryicecream", "Prepare Strawberry Ice Cream", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:strawberryicecream')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need items", "error")
                end
            end, Config.icecreamcone, Config.strawberry)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:cookiedoughicecream")
AddEventHandler("fxs-polarice:client:cookiedoughicecream", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("cookiedoughicecream", "Prepare Cookie Dough Ice Cream", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:cookiedoughicecream')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.icecreamcone, Config.cookiedough )
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:vanillaicecream")
AddEventHandler("fxs-polarice:client:vanillaicecream", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("vanillaicecream", "Prepare Vanilla Ice Cream", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:vanillaicecream')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.icecreamcone, Config.vanilla)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:mintsmoothie")
AddEventHandler("fxs-polarice:client:mintsmoothie", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("mintsmoothie", "Prepare Mint Smoothie", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:mintsmoothie')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.mint,Config.SmoothieCup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:strawberrysmoothie")
AddEventHandler("fxs-polarice:client:strawberrysmoothie", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("strawberrysmoothie", "Prepare Strawberry Smoothie", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:strawberrysmoothie')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.strawberry,Config.SmoothieCup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:cookiedoughsmoothie")
AddEventHandler("fxs-polarice:client:cookiedoughsmoothie", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("cookiedoughsmoothie", "Prepare Cookie Dough Smoothie", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:cookiedoughsmoothie')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.cookiedough,Config.SmoothieCup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:vanillasmoothie")
AddEventHandler("fxs-polarice:client:vanillasmoothie", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("cookiedoughsmoothie", "Prepare Vanilla Smoothie", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:vanillasmoothie')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.vanilla,Config.SmoothieCup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent("fxs-polarice:client:chocolatesmoothie")
AddEventHandler("fxs-polarice:client:chocolatesmoothie", function()
    if onDuty then
            QBCore.Functions.TriggerCallback('fxs-polarice:itemcheck', function(data)
                if data then
                    QBCore.Functions.Progressbar("cookiedoughsmoothie", "Prepare Chocolate Smoothie", Config.CoreSettings.Progressbar.IceCream, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "amb@prop_human_bbq@male@base",
                        anim = "base",
                        flags = 8,
                    }, {}, {}, function() -- Done
                            TriggerServerEvent('fxs-polarice:server:chocolatesmoothie')
                        QBCore.Functions.Notify(("success"), "success")
                    end, function()
                        QBCore.Functions.Notify(("cancel"), "error")
                    end)
                else
                    QBCore.Functions.Notify("You Need Items", "error")
                end
            end, Config.chocolate,Config.SmoothieCup)
    else
        QBCore.Functions.Notify(("You must be Clocked into work"), "error")
    end
end)

RegisterNetEvent('fxs-polarice:client:OpenProductsMenu', function()
    exports['ps-ui']:ShowImage(Config.CoreSettings.ProductMenu.url)
end)

--Blips
CreateThread(function()
    for k, v in pairs(Config.Blips) do
        if v.useblip then
            v.blip = AddBlipForCoord(v['coords'].x, v['coords'].y, v['coords'].z)
            SetBlipSprite(v.blip, v.id)
            SetBlipDisplay(v.blip, 4)
            SetBlipScale(v.blip, v.scale)
            SetBlipColour(v.blip, v.colour)
            SetBlipAsShortRange(v.blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(v.title)
            EndTextCommandSetBlipName(v.blip)
        end
    end
end)


--Target
Citizen.CreateThread(function()
exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Duty.Name, Config.CoreSettings.Duty.Vector, 0.2, 3, {
    name = Config.CoreSettings.Duty.Name,
    heading= Config.CoreSettings.Duty.Heading,
    debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
    minZ= Config.CoreSettings.Duty.minZ,
    maxZ= Config.CoreSettings.Duty.maxZ,
}, {
    options = {
        {  
        event = Config.CoreSettings.Duty.Event,
        icon = Config.CoreSettings.Duty.Icon,
        label =Config.CoreSettings.Duty.Label,
        job = Config.CoreSettings.Job.Name,
        },
    },
    distance = 1.5
    })

    exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Clean.Name, Config.CoreSettings.Clean.Vector, 1.4, 1, {
        name = Config.CoreSettings.Clean.Name,
        heading= Config.CoreSettings.Clean.Heading,
        debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
        minZ= Config.CoreSettings.Clean.mixZ,
        maxZ= Config.CoreSettings.Clean.maxZ,
    }, {
        options = {
            {  
            event = Config.CoreSettings.Clean.Event,
            icon = Config.CoreSettings.Clean.Icon,
            label = Config.CoreSettings.Clean.Label,
            job = Config.CoreSettings.Job.Name,
            },
        },
        distance = 1.5
        })

exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Storage.Name, Config.CoreSettings.Storage.Vector, 1.2, 1, {
    name = Config.CoreSettings.Storage.Name,
    heading= Config.CoreSettings.Storage.Heading,
    debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
    minZ= Config.CoreSettings.Storage.minZ,
    maxZ= Config.CoreSettings.Storage.maxZ,
}, {
    options = {
        {  
        event = Config.CoreSettings.Storage.Event,
        icon = Config.CoreSettings.Storage.Icon,
        label = Config.CoreSettings.Storage.Label,
        job = Config.CoreSettings.Job.Name,
        },
        {  
        event = Config.CoreSettings.Shop.Event,
        icon = Config.CoreSettings.Shop.Icon,
        label = Config.CoreSettings.Shop.Label,
        job = Config.CoreSettings.Job.Name,
        },
    },
    distance = 1.5
    })

    exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Tray.Name, Config.CoreSettings.Tray.Vector, 0.6, 1, {
        name = Config.CoreSettings.Tray.Name,
        heading= Config.CoreSettings.Tray.Heading,
        debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
        minZ= Config.CoreSettings.Tray.minZ,
        maxZ= Config.CoreSettings.Tray.maxZ,
    }, {
        options = {
            {  
            event = Config.CoreSettings.Tray.Event,
            icon = Config.CoreSettings.Tray.Icon,
            label = Config.CoreSettings.Tray.Label,
            },
        },
        distance = 1.5
        }) 

        exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Tray2.Name, Config.CoreSettings.Tray2.Vector, 0.6, 1, {
            name = Config.CoreSettings.Tray2.Event,
            heading= Config.CoreSettings.Tray2.Heading,
            debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
            minZ= Config.CoreSettings.Tray2.minZ,
            maxZ= Config.CoreSettings.Tray2.maxZ,
        }, {
            options = {
                {  
                event = Config.CoreSettings.Tray2.Event,
                icon = Config.CoreSettings.Tray2.Icon,
                label = Config.CoreSettings.Tray2.Label,
                },
            },
            distance = 1.5
            }) 

        exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Coffee.Name, Config.CoreSettings.Coffee.Vector, 1.2, 1, {
            name = Config.CoreSettings.Coffee.Name,
            heading= Config.CoreSettings.Coffee.Heading,
            debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
            minZ= Config.CoreSettings.Coffee.minZ,
            maxZ= Config.CoreSettings.Coffee.maxZ,
        }, {
            options = {
                {  
                event = Config.CoreSettings.Coffee.Event,
                icon = Config.CoreSettings.Coffee.Icon,
                label = Config.CoreSettings.Coffee.Label,
                job = Config.CoreSettings.Job.Name,
                },
            },
            distance = 1.5
            })
            
        exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.Drink.Name, Config.CoreSettings.Drink.Vector, 0.8, 1, {
            name = Config.CoreSettings.Drink.Name,
            heading= Config.CoreSettings.Drink.Heading,
            debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
            minZ= Config.CoreSettings.Drink.minZ,
            maxZ= Config.CoreSettings.Drink.maxZ,
        }, {
            options = {
                {  
                event = Config.CoreSettings.Drink.Event,
                icon = Config.CoreSettings.Drink.Icon,
                label = Config.CoreSettings.Drink.Label,
                job = Config.CoreSettings.Job.Name,
                },
            },
            distance = 1.5
            })

            exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.IceCream.Name, Config.CoreSettings.IceCream.Vector, 2.4, 1, {
                name = Config.CoreSettings.IceCream.Name,
                heading= Config.CoreSettings.IceCream.Heading,
                debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
                minZ=Config.CoreSettings.IceCream.minZ,
                maxZ=Config.CoreSettings.IceCream.maxZ,
            }, {
                options = {
                    {  
                    event = Config.CoreSettings.IceCream.Event,
                    icon = Config.CoreSettings.IceCream.Icon,
                    label = Config.CoreSettings.IceCream.Label,
                    job = Config.CoreSettings.Job.Name,
                    },
                },
                distance = 1.5
                })

                exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.ProductMenu.Name, Config.CoreSettings.ProductMenu.Vector, 1.2, 1, {
                    name = Config.CoreSettings.ProductMenu.Name,
                    heading= Config.CoreSettings.ProductMenu.Heading,
                    debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
                    minZ=Config.CoreSettings.ProductMenu.minZ,
                    maxZ=Config.CoreSettings.ProductMenu.maxZ,
                }, {
                    options = {
                        {  
                        event = Config.CoreSettings.ProductMenu.Event,
                        icon = Config.CoreSettings.ProductMenu.Icon,
                        label = Config.CoreSettings.ProductMenu.Label,
                        job = Config.CoreSettings.Job.Name,
                        },
                    },
                    distance = 1.5
                    })

                    exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.PourSmoothies.Name, Config.CoreSettings.PourSmoothies.Vector, 1.0, 1, {
                        name = Config.CoreSettings.PourSmoothies.Name,
                        heading= Config.CoreSettings.PourSmoothies.Heading,
                        debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
                        minZ=Config.CoreSettings.PourSmoothies.minZ,
                        maxZ=Config.CoreSettings.PourSmoothies.maxZ,
                    }, {
                        options = {
                            {  
                            event = Config.CoreSettings.PourSmoothies.Event,
                            icon = Config.CoreSettings.PourSmoothies.Icon,
                            label = Config.CoreSettings.PourSmoothies.Label,
                            job = Config.CoreSettings.Job.Name,
                            },
                        },
                        distance = 1.5
                        })

            exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.BossMenu.Name, Config.CoreSettings.BossMenu.Vector, 0.8, 1, {
                name = Config.CoreSettings.BossMenu.Name,
                heading= Config.CoreSettings.BossMenu.Heading,
                debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
                minZ=Config.CoreSettings.BossMenu.minZ,
                maxZ=Config.CoreSettings.BossMenu.maxZ,
            }, {
                options = {
                    {  
                    event = Config.CoreSettings.BossMenu.Event,
                    icon = Config.CoreSettings.BossMenu.Icon,
                    label = Config.CoreSettings.BossMenu.Label,
                    job = Config.CoreSettings.Job.Name,
                    },
                    {  
                    event = Config.CoreSettings.BossMenu.Event2,
                    icon = Config.CoreSettings.BossMenu.Icon2,
                    label = Config.CoreSettings.BossMenu.Label2,
                    job = Config.CoreSettings.Job.Name,
               },
                },
                distance = 1.5
                })

                exports[Config.CoreSettings.Target.Target]:AddBoxZone(Config.CoreSettings.icecreamcone.Name, Config.CoreSettings.icecreamcone.Vector,   0.6, 1, {
                    name = Config.CoreSettings.icecreamcone.Name,
                    heading= Config.CoreSettings.icecreamcone.Heading,
                    debugPoly = Config.CoreSettings.DebugPoly.debugPoly,
                    minZ=Config.CoreSettings.icecreamcone.minZ,
                    maxZ=Config.CoreSettings.icecreamcone.maxZ,
                }, {
                    options = {
                    {  
                    event = Config.CoreSettings.icecreamcone.Event,
                    icon = Config.CoreSettings.icecreamcone.Icon,
                    label = Config.CoreSettings.icecreamcone.Label,
                    job = Config.CoreSettings.Job.Name,
                    },
                    },
                    distance = 1.5
                    })

end)



-- Menu

RegisterNetEvent('fxs-polarice:dutymenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Clock On/Off",
            isMenuHeader = true
        },
        { 
            header = "Clock On/Off",
            params = {
                event = "fxs-polarice:duty",
            }
        },
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('fxs-polarice:Drinks', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "🥤 Drinks Menu",
            isMenuHeader = true
        },
        { 
            header = "🥤 Soft Drinks Cup",
            params = {
                event = "fxs-polarice:client:softdrinkscup",
            }
            
        },
        { 
            header = "🥤 Cola",
            txt = "<u>Ingredients Required:</u> <br> 1x Soft Drink Cup",
            params = {
                event = "fxs-polarice:client:cola",
            }
            
        },
        { 
            header = "🥤 Lemonade",
            txt = "<u>Ingredients Required:</u> <br> 1x Soft Drink Cup",
            params = {
                event = "fxs-polarice:client:lemonade",
            }
        },
        { 
            header = "🥤 Orange Soda",
            txt = "<u>Ingredients Required:</u> <br> 1x Soft Drink Cup",
            params = {
                event = "fxs-polarice:client:orangesoda",
            }
        },
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)
    
RegisterNetEvent('fxs-polarice:Coffee', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Menu",
            isMenuHeader = true
        },
        { 
            header = "Item For Coffee",
            txt = "Item to make coffee",
            params = {
                event = "fxs-polarice:itemneed",
            }
        },
        { 
            header = "☕ Black Coffee",
            txt = "<u>Ingredients Required:</u> <br> 1x Coffee beans, 1x Glass",
            params = {
                event = "fxs-polarice:client:blackcoffee",
            }
        },
        { 
            header = "☕ Coffee with milk",
            txt = "<u>Ingredients Required:</u> <br> 1x Milk, 1x Glass",
            params = {
                event = "fxs-polarice:client:blackcoffeemlik",
            }
        },
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('fxs-polarice:icecreamcone', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Cone",
            isMenuHeader = true
        },
        { 
            header = "Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:icecreamcone",
            }
        },
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('fxs-polarice:icecream', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "🍦Prepare Fresh Ice Cream!",
            isMenuHeader = true
        },
        { 
            header = "🫘 Prepare Vanilla Ice Cream",
            txt = "<u>Ingredients Required:</u> <br> Vanilla, Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:vanillaicecream",
            }
        },
        { 
            header = "🍫Prepare Chocolate Ice Cream",
            txt = "<u>Ingredients Required:</u> <br> Chocolate, Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:chocolateicecream",
            }
        },
        { 
            header = "🍓Prepare Strawberry Ice Cream",
            txt = "<u>Ingredients Required:</u> <br> Strawberry,  Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:strawberryicecream",
            }
        },
        { 
            header = "🌿 Prepare Mint Ice Cream",
            txt = "<u>Ingredients Required:</u> <br> Mint,  Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:minticecream",
            }
        },
        {   
            header = "🍪 Prepare Cookie Dough Ice Cream",
            txt = "<u>Ingredients Required:</u> <br> Cookie Dough, Ice Cream Cone",
            params = {
                event = "fxs-polarice:client:cookiedoughicecream",
            }
        }, 
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('fxs-polarice:PourSmoothies', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "🥤 Prepare Fresh Smoothies!",
            isMenuHeader = true,
        },
        {   
            header = "🥤 Get A Smoothie Cup",
            params = {
                event = "fxs-polarice:client:SmoothieCup",
            }
        },          
        {   
            header = "🫘 Prepare Vanilla Smoothie",
            txt = "<u>Ingredients Required:</u> <br> Vanilla, Smoothie Cup",
            params = {
                event = "fxs-polarice:client:vanillasmoothie",
            }
        },               
        {   
            header = "🍫 Prepare Chocolate Smoothie",
            txt = "<u>Ingredients Required:</u> <br> Chocolate, Smoothie Cup",
            params = {
                event = "fxs-polarice:client:chocolatesmoothie",
            }
        },               
        {   
            header = "🍓 Prepare Strawberry Smoothie",
            txt = "<u>Ingredients Required:</u> <br> Strawberry, Smoothie Cup",
            params = {
                event = "fxs-polarice:client:strawberrysmoothie",
            }
        },               
        {   
            header = "🌿 Prepare Mint Smoothie",
            txt = "<u>Ingredients Required:</u> <br> Mint, Smoothie Cup",
            params = {
                event = "fxs-polarice:client:mintsmoothie",
            }
        },                                                                               
        {   
            header = "🍪 Prepare Cookie Dough Smoothie",
            txt = "<u>Ingredients Required:</u> <br> Cookie Dough, Smoothie Cup",
            params = {
                event = "fxs-polarice:client:cookiedoughsmoothie",
            }
        }, 
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('fxs-polarice:itemneed', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Item For Coffee",
            isMenuHeader = true
        },
        { 
            header = "Glass",
            txt = "Glass For Make All Coffee",
            params = {
                event = "fxs-polarice:client:glass",
            }
        },
        { 
            header = "Coffee Beans",
            txt = "Coffee Beans For Black Coffee",
            params = {
                event = "fxs-polarice:client:Coffeebeans",
            }
        },
        { 
            header = "Milk",
            txt = "Milk For Make Coffee With Milk",
            params = {
                event = "fxs-polarice:client:milk",
            }
        },
        {
            header = "Close",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

-- Till Stuff --
RegisterNetEvent("fxs-polarice:bill")
AddEventHandler("fxs-polarice:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("fxs-polarice:bill:player", bill.citizenid, bill.billprice)
    end
end)