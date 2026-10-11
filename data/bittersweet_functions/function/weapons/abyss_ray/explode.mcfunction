particle minecraft:explosion_emitter
particle minecraft:dust_color_transition{scale:2,from_color:14173644,to_color:16434683} ~ ~ ~ 2 2 2 1 15
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 1

execute as @e[type=!#bittersweet_supplement:nonliving_entity,tag=abyssRayOwner,distance=..1] run damage @s 2 minecraft:player_explosion
execute as @e[type=!#bittersweet_supplement:nonliving_entity,tag=abyssRayOwner,distance=..2] run damage @s 1 minecraft:player_explosion

execute as @e[type=!#bittersweet_supplement:nonliving_entity,tag=!abyssRayOwner,distance=..1] run damage @s 2 minecraft:player_explosion
execute as @e[type=!#bittersweet_supplement:nonliving_entity,tag=!abyssRayOwner,distance=..2] run damage @s 2 minecraft:player_explosion
execute as @e[type=!#bittersweet_supplement:nonliving_entity,tag=!abyssRayOwner,distance=..3] run damage @s 4 minecraft:player_explosion

summon breeze_wind_charge ~ ~1 ~ {Motion:[0.0,-5.0,0.0]}
execute as @a[tag=abyssRayOwner] run tag @s remove abyssRayOwner