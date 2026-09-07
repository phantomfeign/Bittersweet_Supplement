execute as @a[tag=PullTarget,sort=nearest,limit=1,distance=..8] run effect give @s resistance 1 0 true
execute as @a[tag=PullTarget,sort=nearest,limit=1,distance=..8] run effect give @s slowness 2 1 true
execute as @e[type=minecraft:enderman,tag=PullHost,sort=nearest,limit=1] at @s run tp @e[type=minecraft:player,tag=PullTarget,sort=nearest,limit=1] ^ ^ ^
particle minecraft:portal ~ ~1 ~ 1 1 1 0.5 30
particle minecraft:end_rod ~ ~2 ~ 1 1 1 0.5 10

execute as @e[type=minecraft:enderman,tag=PullHost,sort=nearest,limit=1] as @s run scoreboard players set @s PullTimer 0
execute as @e[type=minecraft:enderman,tag=PullHost,sort=nearest,limit=1] as @s run effect clear @s slowness
tag @a[tag=PullTarget,sort=nearest,limit=1] remove PullTarget
tag @e[type=minecraft:enderman] remove PullHost