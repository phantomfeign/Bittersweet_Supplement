#thanks to klei wright for this code ILY never listen to the haters
#honey
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bittersweet_supplement:food/honey_bottle
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bittersweet_supplement:food/honey_bottle
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1

#egg
function bittersweet_functions:food/modify_items/stack_fix_macro {item:"minecraft:egg"}
function bittersweet_functions:food/modify_items/stack_fix_macro {item:"minecraft:brown_egg"}
function bittersweet_functions:food/modify_items/stack_fix_macro {item:"minecraft:blue_egg"}
function bittersweet_functions:food/modify_items/stack_fix_macro {item:"minecraft:milk_bucket"}

execute if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/modify_items/check
execute if items entity @s hotbar.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/modify_items/check