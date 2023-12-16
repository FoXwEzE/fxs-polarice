Config = {}

Config.CoreSettings = {
    Job = {
        Name = 'polarice', -- name of job in fxs-core/shared/jobs.lua
    },
    DebugPoly = {
        debugPoly = false,
    },
    Progressbar = {
        ProgressbarTime = 4500, -- How Much Time to do something
        Buy = 2500,
        Drinks = 1000,
        IceCream = 3250
    },
    ProductMenu = {
        Name = "ProductMenu",
        Vector = vector3(272.73, 140.3, 104.44),
        Event = "fxs-polarice:client:OpenProductsMenu",
        Icon = "far fa-clipboard",
        Label = "Open Product Menu",
        heading=160,
        minZ=101.04,
        maxZ=105.04,
        url = "https://media.discordapp.net/attachments/1059110592046170162/1185652891495706794/Untitled_copy.png?ex=6590644d&is=657def4d&hm=e39effb0f3c27f9a55fd1a83e9b23f9e298b46d09be0be844274f30e4c07e022&=&format=webp&quality=lossless&width=2493&height=1402", 
    },
    Core = {
        Core = 'qb-core', -- How Much Time to do something
    },
    Target = {
        Target = 'qb-target',
    },
    Duty = {
        Name = "PolarIceDuty",
        Vector = vector3(276.32, 132.05, 104.44),
        Event = "fxs-polarice:dutymenu",
        Icon = "far fa-clipboard",
        Label = "Clock On/Off",
        Heading = 340,
        minZ=102.04,
        maxZ=106.04,
    },
    Clean = {
       Name = "PolarIceClean",
       Vector = vector3(270.85, 127.93, 104.44),
       Event = "fxs-polarice:client:clean",
       Icon = "fa-solid fa-hand-holding",
       Label = "Clean Yor Face ",
       Heading = 340,
       minZ=101.44,
       maxZ=105.44,
    },
    Storage = {
        Name = "PolarIceStorage",
        Vector = vector3(276.45, 124.47, 104.44),
        Event = "fxs-polarice:storge",
        Icon = "fas fa-archive",
        Label = "Open Storage",
        Heading = 70,
        minZ=101.44,
        maxZ=105.44,
    },
    Shop = {
        Name = "PolarIceShop",
        Vector = vector3(276.69, 132.69, 104.44),
        Event = "qb:polarice:shop",
        Icon = "fas fa-archive",
        Label = "Open Shop",
        Heading=250,
        minZ=101.84,
        maxZ=105.84,
    },
    Tray = {
        Name = "PolarIceTray",
        Vector = vector3(274.56, 136.7, 104.44),
        Event = "fxs-polarice:tray",
        Icon = "fa-solid fa-hand-holding",
        Label = "Open Counter",
        Heading = 70,
        minZ=100.84,
        maxZ=104.84,
    },
    Tray2 = {
        Name = "PolarIceTray2",
        Vector = vector3(272.78, 137.38, 104.44),
        Event = "fxs-polarice:tray2",
        Icon = "fa-solid fa-hand-holding",
        Label = "Open Counter",
        Heading = 255,
        minZ=100.84,
        maxZ=104.84,
    },
    Coffee = {
        Name = "PolarIceCoffee",
        Vector = vector3(274.13, 133.53, 104.44),
        Event = "fxs-polarice:Coffee",
        Icon = "fa-solid fa-hand-holding",
        Label = "Prepare Coffee",
        Heading = 250,
        minZ=101.04,
        maxZ=105.04,
    },
    Drink = {
        Name = "PolarIceDrinks",
        Vector = vector3(271.9, 133.79, 104.44),
        Event = "fxs-polarice:Drinks",
        Icon = "fa-solid fa-hand-holding",
        Label = "Prepare Drink",
        Heading = 250,
        minZ=101.04,
        maxZ=105.04,
    },
    IceCream = {
        Name = "PolarIceCream",
        Vector = vector3(276.56, 135.95, 104.44),
        Event = "fxs-polarice:icecream",
        Icon = "fa-solid fa-hand-holding",
        Label = "Prepare Ice Cream",
        Heading = 250,
        minZ=101.04,
        maxZ=105.04,
    },
    BossMenu = {
        Name = "PolarIceBossmenu",
        Vector = vector3(271.9, 137.67, 104.44),
        Event = "fxs-polarice:bill",
        Event2 = "qb-bossmenu:client:OpenMenu",
        Icon = "fa-solid fa-hand-holding",
        Icon2 = "fa-solid fa-hand-holding",
        Label = "Charge Customer",
        Label2 = "Open Bossmenu",
        Heading = 250,
        minZ=101.04,
        maxZ=105.04,
    },
    icecreamcone = {
        Name = "IceCreamCone",
        Vector =  vector3(275.25, 136.74, 104.44),
        Event = "fxs-polarice:icecreamcone",
        Icon = "fa-solid fa-hand-holding",
        Label = "Ice Cream Cone/Glass",
        Heading = 250,
        minZ=101.44,
        maxZ=105.44,
    },
    PourSmoothies = {
        Name = "PourSmoothies",
        Vector = vector3(270.85, 134.51, 104.44),
        Event = "fxs-polarice:PourSmoothies",
        Icon = "fa-solid fa-hand-holding",
        Label = "PourSmoothies",
        Heading=250,
        minZ=101.44,
        maxZ=105.44,
    },
} 

--Blip Settings
Config.Blips = {
    {title = 'Polar Ice', colour = 8, id = 267, coords = vector3(281.04, 148.03, 104.28), scale = 0.6, useblip = true},
}



--Polarice Create Items List
Config.CoffeeEmptyGlass = 'emptyglass' 
Config.CoffeeBlack = 'coffeeblack'
Config.CoffeeWithMilk = 'coffeewithmilk'
Config.milk = 'milk'
Config.coffebeans = 'coffebeans'
Config.ECola = 'cola'
Config.EColadiet = 'ecoladiet'
Config.lemonade = 'lemonade'
Config.orangesoda = 'orangesoda'
Config.icecreamcone = 'icecreamcone'
Config.chocolate = 'chocolate'
Config.chocolateicecream = 'chocolateicecream'
Config.cookiedoughicecream = 'cookiedoughicecream'
Config.cookiedough = 'cookiedough'
Config.mint = 'mint'
Config.minticecream = 'minticecream'
Config.strawberry = 'strawberry'
Config.strawberryicecream = 'strawberryicecream'
Config.vanilla = 'vanilla'
Config.vanillaicecream = 'vanillaicecream'
Config.SmoothieCup = "smoothiecup"
Config.mintsmoothie = "mintsmoothie"
Config.strawberrysmoothie = "strawberrysmoothie"
Config.chocolatesmoothie = "chocolatesmoothie"
Config.cookiedoughsmoothie = "cookiedoughsmoothie"
Config.vanillasmoothie = "vanillasmoothie"
Config.softdrinkscup = "softdrinkscup"




Config.Shop = {
    label = "Polar Ice Cream",
    slots = 5,
    items = {
        {
            name = "chocolate",
            amount = 5,
            type = "item",
            price = 5,
            slot = 1,
        },
        {
            name = "cookiedough",
            amount = 5,
            type = "item",
            price = 200,
            slot = 2,
        },
        {
            name = "mint",
            amount = 5,
            type = "item",
            price = 5,
            slot = 3,
        },
        {
            name = "strawberry",
            amount = 5,
            type = "item",
            price = 5,
            slot = 4,
        },
        {
            name = "vanilla",
            amount = 5,
            type = "item",
            price = 5,
            slot = 5,
        },
    }
}