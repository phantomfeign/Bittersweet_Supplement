execute unless score @s cooldownSonicAmplifier matches 10.. run return fail
scoreboard players set @s cooldownSonicAmplifier 0
scoreboard players set @s cooldownSonicAmplifier 0
tag @s add sonicBoomOwner
function bittersweet_functions:utility/damage_item/calculate {dmg:1}
playsound minecraft:entity.warden.agitated player @a ~ ~ ~ 5 2
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 2
playsound minecraft:entity.warden.roar player @a ~ ~ ~ 5 2

execute anchored eyes positioned ^ ^ ^1 run function bittersweet_functions:weapons/sonic_boom/one
execute anchored eyes positioned ^ ^ ^3 run function bittersweet_functions:weapons/sonic_boom/one
execute anchored eyes positioned ^ ^ ^5 run function bittersweet_functions:weapons/sonic_boom/one
execute anchored eyes positioned ^ ^ ^7 run function bittersweet_functions:weapons/sonic_boom/one
execute anchored eyes positioned ^ ^ ^9 run function bittersweet_functions:weapons/sonic_boom/one
execute anchored eyes positioned ^ ^ ^11 run function bittersweet_functions:weapons/sonic_boom/one

tag @s remove sonicBoomOwner