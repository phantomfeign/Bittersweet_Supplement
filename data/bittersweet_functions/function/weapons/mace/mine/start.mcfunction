execute unless score @s cooldownMaceMine matches 2.. run return fail
scoreboard players set @s cooldownMaceMine 0
$function bittersweet_functions:utility/bswt.damage_item/calculate {heal:0,dmg:1,slot:$(slot),hand_slot:$(hand_slot)}
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 4 1
playsound minecraft:entity.breeze.charge player @a ~ ~ ~ 4 1
execute anchored eyes positioned ^ ^ ^2 run particle minecraft:gust
execute anchored eyes positioned ^ ^ ^2 align xyz positioned ~-1 ~-1 ~-1 run function bittersweet_functions:weapons/mace/mine/x
