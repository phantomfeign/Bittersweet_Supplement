function bittersweet_functions:misc/round_position
function bittersweet_functions:enchantments/frostbite/remove
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 0.1
effect clear @s
effect give @s minecraft:resistance 1 255 true

execute as @s[type=enderman] run tp @s @p
tp @s ~ ~ ~ 0 0

attribute @s minecraft:max_health base set 100
data merge entity @s {Health:100.0f,NoAI:1b,Silent:1b}
tag @s add bswt.iceStatue
scoreboard players set @s IceStatueTimer 15

execute if entity @s[nbt={IsBaby:1b}] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/small
execute if entity @s[type=#bittersweet_functions:small_animal] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/small
execute if entity @s[type=#bittersweet_functions:big_animal] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/big_animal
execute if entity @s[type=minecraft:enderman] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/enderman
execute if entity @s[type=minecraft:iron_golem] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/iron_golem
execute if entity @s[type=minecraft:ghast] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/ghast
execute if entity @s[type=minecraft:ravager] run return run function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/ravager
function bittersweet_functions:enchantments/frostbite/ice_statue/ice_block/basic