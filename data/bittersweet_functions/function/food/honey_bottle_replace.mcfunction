clear @s minecraft:honey_bottle[!minecraft:custom_data~{bittersweet_honey:1b}] 1
give @s minecraft:honey_bottle[minecraft:custom_data={bittersweet_honey:1b},\
minecraft:lore=[{\
"text":"♡",\
"color":"#54d877",\
"italic":false},{\
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
amplifier:0,duration:60}]}]}] 1
advancement revoke @s only bittersweet_functions:food/honey_harvest
tag @s remove HoneyHarvest
