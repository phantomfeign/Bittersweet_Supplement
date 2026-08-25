#thanks to klei wright for this code ILY never listen to the haters
#water
execute at @a run execute if items entity @p inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @p minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute at @a run execute if items entity @p hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @p minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute at @a run execute if items entity @p inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @p minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @p minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1
#honey
execute at @a run execute if items entity @p inventory.* minecraft:honey_bottle[!max_stack_size=64] run give @p minecraft:honey_bottle[minecraft:custom_data={bittersweet_honey:1b},\
minecraft:max_stack_size=64,\
minecraft:lore=[{\
"text":"♡",\
"color":"#54d877","italic":false},{\
"text":"A burst of energy and a gentle warmth",\
"color":"white","italic":false},{\
"text":"slowly settle in as you hastily wolf it down.",\
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

execute at @a run execute if items entity @p hotbar.* minecraft:honey_bottle[!max_stack_size=64] run give @p minecraft:honey_bottle[minecraft:custom_data={bittersweet_honey:1b},\
minecraft:max_stack_size=64,\
minecraft:lore=[{\
"text":"♡",\
"color":"#54d877","italic":false},{\
"text":"A burst of energy and a gentle warmth",\
"color":"white","italic":false},{\
"text":"slowly settle in as you hastily wolf it down.",\
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

execute at @a run execute if items entity @p inventory.* minecraft:honey_bottle[!max_stack_size=64] run clear @p minecraft:honey_bottle[!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:honey_bottle[!max_stack_size=64] run clear @p minecraft:honey_bottle[!max_stack_size=64] 1

#egg
execute at @a run execute if items entity @p inventory.* minecraft:egg[!max_stack_size=64] run give @p minecraft:egg[max_stack_size=64]
execute at @a run execute if items entity @p inventory.* minecraft:brown_egg[!max_stack_size=64] run give @p minecraft:brown_egg[max_stack_size=64]
execute at @a run execute if items entity @p inventory.* minecraft:blue_egg[!max_stack_size=64] run give @p minecraft:blue_egg[max_stack_size=64]
execute at @a run execute if items entity @p hotbar.* minecraft:egg[!max_stack_size=64] run give @p minecraft:egg[max_stack_size=64]
execute at @a run execute if items entity @p hotbar.* minecraft:brown_egg[!max_stack_size=64] run give @p minecraft:brown_egg[max_stack_size=64]
execute at @a run execute if items entity @p hotbar.* minecraft:blue_egg[!max_stack_size=64] run give @p minecraft:blue_egg[max_stack_size=64]

execute at @a run execute if items entity @p inventory.* minecraft:egg[!max_stack_size=64] run clear @p minecraft:egg[!max_stack_size=64] 1
execute at @a run execute if items entity @p inventory.* minecraft:blue_egg[!max_stack_size=64] run clear @p minecraft:blue_egg[!max_stack_size=64] 1
execute at @a run execute if items entity @p inventory.* minecraft:brown_egg[!max_stack_size=64] run clear @p minecraft:brown_egg[!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:egg[!max_stack_size=64] run clear @p minecraft:egg[!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:blue_egg[!max_stack_size=64] run clear @p minecraft:blue_egg[!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:brown_egg[!max_stack_size=64] run clear @p minecraft:brown_egg[!max_stack_size=64] 1

execute as @a if items entity @s inventory.* #bittersweet_functions:needs_stack_adjustments[!max_stack_size=64] run function bittersweet_functions:food/process_stacks
