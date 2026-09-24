execute if items entity @s inventory.* #bittersweet_functions:needs_replacement_adjustment run function bittersweet_functions:food/modify_items/process/replacements
execute if items entity @s hotbar.* #bittersweet_functions:needs_replacement_adjustment run function bittersweet_functions:food/modify_items/process/replacements

execute if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/modify_items/process/stack_sizes
execute if items entity @s hotbar.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/modify_items/process/stack_sizes

execute if items entity @s inventory.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/modify_items/process/transforms
execute if items entity @s hotbar.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/modify_items/process/transforms

execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run function bittersweet_functions:food/modify_items/process/water_bottle
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run function bittersweet_functions:food/modify_items/process/water_bottle

advancement revoke @s only bittersweet_functions:food/stack_sizes
