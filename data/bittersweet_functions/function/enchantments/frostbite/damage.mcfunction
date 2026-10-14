particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0 3
particle minecraft:dust_pillar{block_state:"minecraft:blue_ice"} ~ ~ ~ 0 0 0 0.2 10
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 2

execute store result score @s FrostbiteHealth run data get entity @s Health
execute if entity @s[type=!#bittersweet_functions:cant_ice_statue] if score @s FrostbiteHealth matches 0..6 run function bittersweet_functions:enchantments/frostbite/ice_statue/become

execute if entity @s[type=!player,type=!#bittersweet_functions:is_passive] run damage @s 1.5 minecraft:freeze
execute if entity @s[type=player] run damage @s 0.5 minecraft:freeze
execute if entity @s[type=#bittersweet_functions:is_passive] run damage @s 0.5 minecraft:freeze
