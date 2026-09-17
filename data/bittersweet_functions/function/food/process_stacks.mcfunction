#thanks to klei wright for this code ILY never listen to the haters
#honey
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bittersweet_supplement:food/honey_bottle
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bittersweet_supplement:food/honey_bottle
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1

#water
execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @s minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @s minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @s minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @s minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1

#egg
function bittersweet_functions:food/fix_item_stack {item:"minecraft:egg"}
function bittersweet_functions:food/fix_item_stack {item:"minecraft:brown_egg"}
function bittersweet_functions:food/fix_item_stack {item:"minecraft:blue_egg"}
function bittersweet_functions:food/fix_item_stack {item:"minecraft:milk_bucket"}

execute if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/stack_size_increases
execute if items entity @s hotbar.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/stack_size_increases