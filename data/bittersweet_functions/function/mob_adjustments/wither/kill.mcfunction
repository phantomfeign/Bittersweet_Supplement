data modify entity @s DeathLootTable set value "bittersweet_supplement:mob/wither_ingredients"
data merge entity @s {NoAI:1b,Silent:1b}
tellraw @a {"text":"This monstrosity recoils in the Elysian air.","color":"#ff8f1e"}
effect give @e[distance=..2] minecraft:wither 5
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 10
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10
particle minecraft:flash{color:16741378} ~ ~ ~ 0 0 0 0 1
particle minecraft:dust_pillar{block_state:"minecraft:soul_sand"} ~ ~ ~ 0 0 0 0.2 5
particle minecraft:dust_pillar{block_state:"minecraft:blackstone"} ~ ~ ~ 0 0 0 0.2 5
execute at @p run schedule function bittersweet_functions:mob_adjustments/wither/kill_star 1t
kill @s