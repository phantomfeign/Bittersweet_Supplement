#mark the nearest player as the player performing the repair(this is a special tool to help us later), then check for gold around the item
execute as @p[distance=..5] run tag @s add RepairPlayer
execute as @e[type=item,distance=..1,] if items entity @s contents minecraft:gold_ingot run function bittersweet_functions:gold_repair/repair
tag @s remove this