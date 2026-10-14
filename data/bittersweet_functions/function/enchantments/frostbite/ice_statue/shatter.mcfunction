playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 0.1

playsound minecraft:block.glass.break hostile @a ~ ~ ~ 3 1
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 3 0.5

particle minecraft:snowflake ~ ~ ~ 1 2 1 0.1 10
particle minecraft:dust_pillar{block_state:"minecraft:blue_ice"} ~ ~ ~ 0 0 0 0.5 10

tag @s remove bswt.iceStatue

execute as @e[type=!#bittersweet_functions:nonliving_entity,tag=bswt.iceStatue,distance=..4] at @s run damage @s 1 minecraft:freeze
execute as @e[type=!#bittersweet_functions:nonliving_entity,distance=..4] at @s run function bittersweet_functions:enchantments/frostbite/apply
execute as @e[type=!#bittersweet_functions:nonliving_entity,distance=..2] at @s run damage @s 2 minecraft:freeze

execute as @s[type=player] run return fail
execute on passengers run kill @s
kill @s