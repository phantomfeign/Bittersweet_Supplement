#prevent mobs from dropping equipment
data modify entity @s drop_chances.head set value 0.0f
data modify entity @s drop_chances.chest set value 0.0f
data modify entity @s drop_chances.legs set value 0.0f
data modify entity @s drop_chances.feet set value 0.0f
data modify entity @s drop_chances.mainhand set value 0.0f
data modify entity @s drop_chances.offhand set value 0.0f

#zombies take 20% knockback
execute as @s[type=#minecraft:zombies] run attribute @s minecraft:knockback_resistance base set 0.6

#skeleton health reduction 20 -> 16; 20% decrease
execute as @s[type=minecraft:skeleton] run attribute @s minecraft:max_health base set 16
execute as @s[type=minecraft:skeleton] run data merge entity @s {Health:16.0f}
# 25% chance to give skeletons a crossbow
execute as @s[type=minecraft:skeleton,tag=!AxeChecked] if predicate bittersweet_functions:axe_skeleton_chance run function bittersweet_functions:mob_adjustments/skeleton/axe_wielder
attribute @s[type=minecraft:skeleton,tag=AxeGiven] minecraft:attack_damage base set -4.0
tag @s[type=minecraft:skeleton] add AxeChecked

#creeper fuses reset for custom explosions
execute as @s[type=creeper] run data modify entity @s ExplosionRadius set value 0b
execute as @s[type=creeper,tag=!marked_creeper] run effect give @s minecraft:luck infinite 99 true
execute as @s[type=creeper,tag=!marked_creeper] run tag @s add marked_creeper
