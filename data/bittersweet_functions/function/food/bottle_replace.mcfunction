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
amplifier:0,duration:50},\
{id:"minecraft:speed",\
amplifier:0,duration:60}]}]}]

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
amplifier:0,duration:50},\
{id:"minecraft:speed",\
amplifier:0,duration:60}]}]}]

execute at @a run execute if items entity @p inventory.* minecraft:honey_bottle[!max_stack_size=64] run clear @p minecraft:honey_bottle[!max_stack_size=64] 1
execute at @a run execute if items entity @p hotbar.* minecraft:honey_bottle[!max_stack_size=64] run clear @p minecraft:honey_bottle[!max_stack_size=64] 1
