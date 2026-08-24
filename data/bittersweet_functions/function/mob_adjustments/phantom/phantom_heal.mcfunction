advancement revoke @s only bittersweet_functions:mob_checks/phantom_kill_player
effect give @e[type=phantom,tag=NightTerror] minecraft:instant_damage 1 3 true
execute at @e[type=phantom,tag=NightTerror] run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 5 0.5
execute at @e[type=phantom,tag=NightTerror] run playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 5 0.1