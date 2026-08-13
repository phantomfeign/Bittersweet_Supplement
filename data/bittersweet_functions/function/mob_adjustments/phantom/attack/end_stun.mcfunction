tag @e[type=minecraft:phantom,tag=NightTerror] remove Stunned
effect clear @e[type=minecraft:phantom,tag=NightTerror] minecraft:slowness
effect clear @e[type=minecraft:phantom,tag=NightTerror] minecraft:glowing
effect clear @e[type=minecraft:phantom,tag=NightTerror] minecraft:weakness

data modify entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] Motion set value [0.0d,1.0d,0.0d]
data modify entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] NoAI set value 0b
advancement revoke @a only bittersweet_functions:mob_checks/phantom_crit
