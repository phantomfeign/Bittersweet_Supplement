tag @s add SpawnChecked
#prevent mobs from dropping equipment
data modify entity @s drop_chances.head set value 0.0f
data modify entity @s drop_chances.chest set value 0.0f
data modify entity @s drop_chances.legs set value 0.0f
data modify entity @s drop_chances.feet set value 0.0f
data modify entity @s drop_chances.mainhand set value 0.0f
data modify entity @s drop_chances.offhand set value 0.0f

#zombies take 20% knockback
execute as @s[type=minecraft:zombie] run function bittersweet_functions:mob_adjustments/zombie/on_spawn

#drowned take more knockback but follow longer
execute as @s[type=minecraft:drowned] run function bittersweet_functions:mob_adjustments/drowned/on_spawn

#husks are big tanks
execute as @s[type=minecraft:husk] run function bittersweet_functions:mob_adjustments/husk/on_spawn

#skeleton health reduction 20 -> 16; 20% decrease unless holding axe
#25% chance to give skeletons an axe
execute as @s[type=minecraft:skeleton] run function bittersweet_functions:mob_adjustments/skeleton/on_spawn

#creeper fuses reset for custom explosions
execute as @s[type=minecraft:creeper] run function bittersweet_functions:mob_adjustments/creeper/on_spawn

#enderman teleports players and disables shields
execute as @s[type=minecraft:enderman] run function bittersweet_functions:mob_adjustments/enderman/on_spawn

#silverfish bigger and frailer
execute as @s[type=minecraft:silverfish] run function bittersweet_functions:mob_adjustments/silverfish/on_spawn

#warden has knockback and debuffs but less damage
execute as @s[type=minecraft:warden] run function bittersweet_functions:mob_adjustments/warden/on_spawn

#spiders have 10 hp instead of 20 and more speed + jump
execute as @s[type=minecraft:spider] run function bittersweet_functions:mob_adjustments/spiders/on_spawn

#cave spiders have 8 hp instead of 12 and more speed, as well as most of their dmg budget allocated to poison instead
execute as @s[type=minecraft:cave_spider] run function bittersweet_functions:mob_adjustments/spiders/on_spawn_cave

#snow golems arent super frail
execute as @s[type=minecraft:snow_golem] run function bittersweet_functions:mob_adjustments/snow_golem/on_spawn

#elder guardian
execute as @s[type=minecraft:elder_guardian] run function bittersweet_functions:mob_adjustments/elder_guardian/on_spawn

#evoker
execute as @s[type=minecraft:evoker] run function bittersweet_functions:mob_adjustments/evoker/on_spawn

#wandering trader
execute as @s[type=minecraft:wandering_trader] run function bittersweet_functions:mob_adjustments/wandering_trader/on_spawn

