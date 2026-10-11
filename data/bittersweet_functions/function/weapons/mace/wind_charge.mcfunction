execute unless score @s cooldownMaceWind matches 10.. run return fail
scoreboard players set @s cooldownMaceWind 0
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 4 2
summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0,-2.0,0.0]}
