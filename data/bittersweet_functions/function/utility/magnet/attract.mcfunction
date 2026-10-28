data modify storage bswt.magnet inventory set from entity @s Inventory
data remove storage bswt.magnet inventory[{Slot:-106b}]
data remove storage bswt.magnet inventory[{Slot:100b}]
data remove storage bswt.magnet inventory[{Slot:101b}]
data remove storage bswt.magnet inventory[{Slot:102b}]
data remove storage bswt.magnet inventory[{Slot:103b}]

execute if data storage bswt.magnet inventory[35] run return fail

execute unless predicate bittersweet_functions:holding_sneak run function bittersweet_functions:utility/magnet/fx/regular
execute if predicate bittersweet_functions:holding_sneak run function bittersweet_functions:utility/magnet/fx/sneak

execute unless predicate bittersweet_functions:holding_sneak unless entity @e[type=minecraft:item,distance=1..4] run return fail
execute unless entity @e[type=minecraft:item,distance=1..8] run return fail

$function bittersweet_functions:utility/bswt.damage_item/calculate {heal:0,dmg:1,slot:$(slot),hand_slot:$(hand_slot)}

execute at @e[type=minecraft:item,sort=furthest,limit=1,distance=1..8] run particle minecraft:end_rod ~ ~ ~ 0 1 0 0.1 0

data modify entity @e[sort=furthest,limit=1,type=minecraft:item,distance=1..8] PickupDelay set value 0s
tp @e[sort=furthest,limit=1,type=minecraft:item,distance=1..8] @s