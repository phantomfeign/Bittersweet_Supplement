execute if items entity @s hotbar.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run give @s minecraft:arrow
execute if items entity @s hotbar.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run clear @s minecraft:arrow[minecraft:equippable={slot:"saddle"}] 1
execute if items entity @s inventory.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run give @s minecraft:arrow
execute if items entity @s inventory.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run clear @s minecraft:arrow[minecraft:equippable={slot:"saddle"}] 1

execute if items entity @s hotbar.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run return run function bittersweet_functions:misc/modify_items/process/arrow
execute if items entity @s inventory.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run return run function bittersweet_functions:misc/modify_items/process/arrow
