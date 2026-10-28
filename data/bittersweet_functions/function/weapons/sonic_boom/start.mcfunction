execute unless score @s cooldownSonicAmplifier matches 10.. run return fail
scoreboard players set @s cooldownSonicAmplifier 0
scoreboard players set @s cooldownSonicAmplifier 0
tag @s add sonicBoomOwner
$function bittersweet_functions:utility/bswt.damage_item/calculate {heal:0,dmg:1,slot:$(slot),hand_slot:$(hand_slot)}
playsound minecraft:entity.warden.agitated player @a ~ ~ ~ 5 2
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 2
playsound minecraft:entity.warden.roar player @a ~ ~ ~ 5 2

execute anchored eyes run summon minecraft:marker ^ ^ ^2 {Tags:["bswt.sonicBoom"]}
execute as @e[sort=nearest,limit=1,type=minecraft:marker,tag=bswt.sonicBoom] \
rotated as @e[sort=nearest,limit=1,type=minecraft:player,tag=sonicBoomOwner] run rotate @s ~ ~

tag @s remove sonicBoomOwner