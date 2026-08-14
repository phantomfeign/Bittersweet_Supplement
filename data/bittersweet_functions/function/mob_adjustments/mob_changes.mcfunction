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
execute as @s[type=minecraft:skeleton,tag=!AxeChecked] if predicate bittersweet_functions:axe_skeleton_chance run item replace entity @s weapon.mainhand with minecraft:wooden_axe
attribute @s minecraft:attack_damage base set -4.0
tag @s[type=minecraft:skeleton] add AxeChecked
#iron golems have an extra block of reach
