particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 30 force
particle minecraft:enchant ~ ~1.5 ~ 0.5 1 0.5 0 30 force
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
effect give @s minecraft:blindness 4 0
tag @s add PullTarget
