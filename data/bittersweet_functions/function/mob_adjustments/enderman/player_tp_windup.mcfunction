execute as @a[tag=Cramped,sort=nearest,limit=1,distance=..8] at @s run function bittersweet_functions:mob_adjustments/enderman/player_fx
function bittersweet_functions:mob_adjustments/enderman/enderman_fx

particle minecraft:enchant ~ ~1.5 ~ 0 1 0 0 30 force
schedule function bittersweet_functions:mob_adjustments/enderman/player_tp 20t
effect give @s slowness 1 255 true
