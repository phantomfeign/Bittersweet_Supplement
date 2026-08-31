execute unless entity @e[type=armadillo,tag=light_block,distance=..2] run summon minecraft:armadillo ~ ~ ~ \
{active_effects:[{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:false},\
{id:"minecraft:invisibility",amplifier:5,duration:-1,show_particles:false}],\
attributes:[{id:"minecraft:scale",base:-100}],\
Tags:["light_block","smithed.strict","smithed.entity"],\
equipment:{head:{id:"minecraft:iron_helmet",count:1},\
chest:{id:"minecraft:iron_chestplate",count:1},\
legs:{id:"minecraft:iron_leggings",count:1},\
feet:{id:"minecraft:iron_boots",count:1}},\
NoAI:1b,Silent:1b,DeathLootTable:"bittersweet_functions:empty"}

tag @s remove LitUp