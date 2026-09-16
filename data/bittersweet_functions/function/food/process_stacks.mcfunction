#thanks to klei wright for this code ILY never listen to the haters
#honey
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run give @s minecraft:honey_bottle[minecraft:custom_data={bittersweet_honey:1b},\
minecraft:max_stack_size=64,\
minecraft:lore=[{\
"text":"♡",\
"color":"#54d877","italic":false},{\
"text":"A burst of energy and a gentle warmth",\
"color":"white","italic":false},{\
"text":"slowly settle in as you hastily gulp it down.",\
"color":"white","italic":false}\
],minecraft:consumable={\
consume_seconds:0.5,\
animation:"drink",\
sound:"item.honey_bottle.drink",\
has_consume_particles:false,\
on_consume_effects:[{type:"apply_effects",\
effects:[{id:"minecraft:regeneration",\
amplifier:0,duration:50,show_particles:false},\
{id:"minecraft:speed",\
amplifier:0,duration:60,show_particles:false}]}]}]

execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run give @s minecraft:honey_bottle[minecraft:custom_data={bittersweet_honey:1b},\
minecraft:max_stack_size=64,\
minecraft:lore=[{\
"text":"♡",\
"color":"#54d877","italic":false},{\
"text":"A burst of energy and a gentle warmth",\
"color":"white","italic":false},{\
"text":"slowly settle in as you hastily gulp it down.",\
"color":"white","italic":false}\
],minecraft:consumable={\
consume_seconds:0.5,\
animation:"drink",\
sound:"item.honey_bottle.drink",\
has_consume_particles:false,\
on_consume_effects:[{type:"apply_effects",\
effects:[{id:"minecraft:regeneration",\
amplifier:0,duration:50,show_particles:false},\
{id:"minecraft:speed",\
amplifier:0,duration:60,show_particles:false}]}]}]

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

execute if items entity @s inventory.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run give @s fire_charge\
[custom_data={adjusted_item:1b},\
consumable={consume_seconds:0,\
animation:"toot_horn",\
sound:"intentionally_empty",\
has_consume_particles:false,\
on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},\
use_cooldown={seconds:0.5,cooldown_group:"fireball"},\
custom_name={"italic":false,"text":"Fireball"},!food]

execute if items entity @s hotbar.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run give @s fire_charge\
[custom_data={adjusted_item:1b},\
consumable={consume_seconds:0,\
animation:"toot_horn",\
sound:"intentionally_empty",\
has_consume_particles:false,\
on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},\
use_cooldown={seconds:0.5,cooldown_group:"fireball"},\
custom_name={"italic":false,"text":"Fireball"},!food]

execute if items entity @s inventory.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run clear @s minecraft:fire_charge[!custom_data={adjusted_item:1b}] 1
execute if items entity @s hotbar.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run clear @s minecraft:fire_charge[!custom_data={adjusted_item:1b}] 1

execute as @a if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/process_stacks
execute as @a if items entity @s hotbar.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/process_stacks

execute as @a if items entity @s inventory.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/process_stacks
execute as @a if items entity @s hotbar.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/process_stacks