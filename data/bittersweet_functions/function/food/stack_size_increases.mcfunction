advancement revoke @s only bittersweet_functions:misc/inventory_changed
execute if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/process_stacks
execute if items entity @s hotbar.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/process_stacks

execute if items entity @s inventory.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/process_stacks
execute if items entity @s hotbar.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/process_stacks
