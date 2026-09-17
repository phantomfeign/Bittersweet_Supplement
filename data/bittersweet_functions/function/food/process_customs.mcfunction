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

execute if items entity @s inventory.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/stack_size_increases
execute if items entity @s hotbar.* #bittersweet_functions:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bittersweet_functions:food/stack_size_increases