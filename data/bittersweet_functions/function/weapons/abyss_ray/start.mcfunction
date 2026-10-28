execute unless score @s cooldownAbyssRay matches 5.. run return fail
scoreboard players set @s cooldownAbyssRay 0
tag @s add bswt.abyssRayOwner
$function bittersweet_functions:utility/bswt.damage_item/calculate {heal:0,dmg:1,slot:$(slot),hand_slot:$(hand_slot)}
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 4 2
playsound entity.ender_eye.death player @a ~ ~ ~ 4 2
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 4 2
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 4 1

execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["bswt.abyss_ray"]}
execute as @e[sort=nearest,limit=1,type=minecraft:marker,tag=bswt.abyss_ray] \
rotated as @e[sort=nearest,limit=1,type=minecraft:player,tag=bswt.abyssRayOwner] run rotate @s ~ ~

tag @s remove bswt.abyssRayOwner