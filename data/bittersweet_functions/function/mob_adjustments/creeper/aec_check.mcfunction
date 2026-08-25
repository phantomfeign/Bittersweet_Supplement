execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:99b}]}}] run function bittersweet_functions:mob_adjustments/creeper/explode
tag @s add creeper_aec_check
