scoreboard players set @s VerdureTimer 0
execute if predicate bittersweet_functions:enchantment/verdure/mainhand run item modify entity @s weapon.mainhand bittersweet_functions:verdure_repair
execute if predicate bittersweet_functions:enchantment/verdure/offhand run item modify entity @s weapon.offhand bittersweet_functions:verdure_repair
playsound block.azalea_leaves.break player @s ~ ~ ~ 1 1
playsound block.leaf_litter.break player @s ~ ~ ~ 1 1.5
playsound block.azalea_leaves.break player @s ~ ~ ~ 1 2