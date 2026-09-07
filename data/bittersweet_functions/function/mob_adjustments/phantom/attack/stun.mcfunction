tag @e[type=minecraft:phantom,tag=NightTerror] add Stunned
effect give @e[type=phantom,tag=NightTerror] minecraft:glowing infinite 1
effect give @e[type=phantom,tag=NightTerror] minecraft:slowness infinite 255
effect give @e[type=phantom,tag=NightTerror] minecraft:weakness infinite 255
schedule function bittersweet_functions:mob_adjustments/phantom/attack/end_stun 5s