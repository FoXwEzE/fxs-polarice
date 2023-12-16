Thank you for downloading the script please follow this steps before running the script:

This Is a New version of qbcore !!!!!

1. Add items:
go to "qb-core" then shared folder > items.lua and add this New qb-core Folder : 

 -- FXS-Polar Ice Cream
` coffeewithmilk                       = { name = 'coffeewithmilk', label = 'Coffee With Milk', weight = 200, type = 'item', image = 'coffeewithmilk.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Coffee With Milk' },
   coffeeblack                     = { name = 'coffeeblack', label = 'Black Coffee', weight = 100, type = 'item', image = 'blackcoffee.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Nice Black Coffee' },
    emptyglass                     = { name = 'emptyglass', label = 'Empty Glass', weight = 100, type = 'item', image = 'mug.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Empty Glass' },
    coffebeans                     = { name = 'coffebeans', label = 'Coffee Beans', weight = 100, type = 'item', image = 'coffeebeans.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Coffee Beans' },
    milk                     = { name = 'milk', label = 'Milk', weight = 100, type = 'item', image = 'Milk.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Milk' },
    cola                     = { name = 'cola', label = 'Cola', weight = 100, type = 'item', image = 'ecola.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Cola' },
    lemonade                     = { name = 'lemonade', label = 'Lemonade', weight = 100, type = 'item', image = 'lemonade.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Lemonade' },
    orangesoda                     = { name = 'orangesoda', label = 'Orange Soda', weight = 100, type = 'item', image = 'orangesoda.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Orange Soda' },
    icecreamcone                     = { name = 'icecreamcone', label = 'Ice Cream Cone', weight = 100, type = 'item', image = 'icecreamcone.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Ice Cream Cone' },
    icecreamglass                     = { name = 'icecreamglass', label = 'Ice Cream Glass', weight = 100, type = 'item', image = 'icecreamglass.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Ice Cream Glass' },
    strawberry                     = { name = 'strawberry', label = 'Strawberry', weight = 100, type = 'item', image = 'strawberry.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'strawberry' },
    mint                     = { name = 'mint', label = 'Mint', weight = 100, type = 'item', image = 'mint.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'mint' },
    cookiedough                     = { name = 'cookiedough', label = 'Cookie Dough', weight = 100, type = 'item', image = 'cookiedough.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Cookie Dough' },
    chocolate                     = { name = 'chocolate', label = 'Chocolate', weight = 100, type = 'item', image = 'chocolate.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Chocolate' },
    vanilla                     = { name = 'vanilla', label = 'Vanilla', weight = 100, type = 'item', image = 'vanilla.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Vanilla' },
    vanillaicecream                     = { name = 'vanillaicecream', label = 'Vanilla Ice Cream', weight = 100, type = 'item', image = 'vanillaicecream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Vanilla Ice Cream' },
    strawberryicecream                     = { name = 'strawberryicecream', label = 'Strawberry Ice Cream', weight = 100, type = 'item', image = 'strawberryicecream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Vanilla Ice Cream' },
    minticecream                     = { name = 'minticecream', label = 'Mint Ice Cream', weight = 100, type = 'item', image = 'minticecream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Mint Ice Cream' },
    cookiedoughicecream                     = { name = 'cookiedoughicecream', label = 'Cookie Dough Ice Cream', weight = 100, type = 'item', image = 'cookiedoughicecream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Cookie Dough Ice Cream' },
    chocolateicecream                     = { name = 'chocolateicecream', label = 'chocolate Ice Cream', weight = 100, type = 'item', image = 'chocolateicecream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'chocolate Ice Cream' },
    smoothiecup                     = { name = 'smoothiecup', label = 'Smoothie Cup', weight = 100, type = 'item', image = 'smoothiecup.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    mintsmoothie                     = { name = 'mintsmoothie', label = 'Mint Smoothie', weight = 100, type = 'item', image = 'mintsmoothie.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    strawberrysmoothie                     = { name = 'strawberrysmoothie', label = 'Strawberry Smoothie', weight = 100, type = 'item', image = 'strawberrysmoothie.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    vanillasmoothie                     = { name = 'vanillasmoothie', label = 'Vanilla Smoothie', weight = 100, type = 'item', image = 'vanillasmoothie.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    chocolatesmoothie                     = { name = 'chocolatesmoothie', label = 'Chocolate Smoothie', weight = 100, type = 'item', image = 'chocolatesmoothie.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    cookiedoughsmoothie                     = { name = 'cookiedoughsmoothie', label = 'Cookiedough Smoothie', weight = 100, type = 'item', image = 'cookiedoughsmoothie.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' },
    softdrinkscup                     = { name = 'softdrinkscup', label = 'Soft Drinks Cup', weight = 100, type = 'item', image = 'softdrinkscup.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Smoothie Cup' }, `



2. go to "qb-core" then shared folder > qb-core/shared/jobs.lua and at least under line 14  : 
    	polarice = {
		label = 'Polar Ice Cream',
		type = 'polarice',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},

    3.  Add images to inventory
here you have images folder copy the images inside that folder and put it inside "qb-inventory/html/image"

4. goto "qb-smallresources/config.lua" add this in line 99

        ['coffeeblack'] = math.random(35, 54),
        ['coffeewithmilk'] = math.random(35, 54),
        ['ecola'] = math.random(35, 54),
        ['orangesoda'] = math.random(35, 54),
        ['lemonade'] = math.random(35, 54),
        ['mintsmoothie'] = math.random(35, 54),
        ['strawberrysmoothie'] = math.random(35, 54),
        ['chocolatesmoothie'] = math.random(35, 54),
        ['cookiedoughsmoothie'] = math.random(35, 54),
        ['vanillasmoothie'] = math.random(35, 54),
    
		_______________________________________

4. goto "qb-smallresources/config.lua" add this in line 92

        ['chocolateicecream'] = math.random(40, 50),
        ['cookiedoughicecream'] = math.random(40, 50),
        ['minticecream'] = math.random(40, 50),
        ['strawberryicecream'] = math.random(40, 50),
        ['vanillaicecream'] = math.random(40, 50),
