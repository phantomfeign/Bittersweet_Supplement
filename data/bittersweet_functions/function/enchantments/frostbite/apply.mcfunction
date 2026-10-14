execute if entity @s[type=#bittersweet_functions:nonliving_entity] run return fail
tag @s add bswt.frostbitten
data merge entity @s {TicksFrozen:9999s}
effect give @s minecraft:slowness infinite 0 true
execute as @s[type=!player] run scoreboard players set @s FrostbiteTimer 10
execute as @s[type=player] run scoreboard players set @s FrostbiteTimer 6

#fire
execute unless score @s FireTimer matches 1.. run return fail
scoreboard players set @s FireTimer 0
data modify entity @s HasVisualFire set value 0b
tag @s remove isOnFire