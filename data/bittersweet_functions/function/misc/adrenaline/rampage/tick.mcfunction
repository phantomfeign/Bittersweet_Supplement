scoreboard players remove @s Adrenaline 10
effect give @s minecraft:strength 2 0 true
effect give @s minecraft:resistance 2 0 true

playsound minecraft:block.copper_bulb.turn_off player @s ~ ~ ~ 1 1
execute unless score @s Adrenaline matches ..0 run particle minecraft:raid_omen ~ ~ ~ 0.2 1 0.2 0 4
execute unless score @s Adrenaline matches ..0 run particle minecraft:trial_spawner_detection ~ ~ ~ 0.2 1 0.2 0.1 4

execute unless score @s Adrenaline matches ..0 run return fail
scoreboard players set @s Adrenaline 0
scoreboard players set @s Rampage 0
particle minecraft:trial_omen ~ ~ ~ 0.2 1 0.2 0 5
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 1 0.2 0.1 5
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 10 2
playsound minecraft:block.conduit.attack.target player @a ~ ~ ~ 10 1