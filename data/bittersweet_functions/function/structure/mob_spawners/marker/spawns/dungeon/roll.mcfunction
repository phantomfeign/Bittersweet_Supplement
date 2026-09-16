execute if predicate bittersweet_functions:chance/chance_25 run summon splash_potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:infested"}}}}

execute if predicate bittersweet_functions:chance/chance_50 run return run summon minecraft:zombie ~ ~1 ~ {Tags:[SpawnBypass],Motion:[-0.1,0.0,-0.1]}

execute if predicate bittersweet_functions:chance/chance_25 run return run summon minecraft:skeleton ~ ~1 ~ {Tags:[SpawnBypass],Motion:[-0.2,0.0,0.2]}

summon minecraft:spider ~ ~1 ~ {Tags:[SpawnBypass],Motion:[0.2,0.0,-0.2]}
