attribute @s minecraft:attack_damage base set 3
attribute @s minecraft:knockback_resistance base set 0.5
attribute @s minecraft:follow_range base set 25
attribute @s minecraft:step_height base set 1
attribute @s minecraft:max_health base set 20
data merge entity @s {Health:20.0f}

execute store result score #contestedRoll MobEquipmentTier run random value 0..10
execute if score @s MobEquipmentTier >= #contestedRoll MobEquipmentTier run function bittersweet_functions:mob_adjustments/individual_mobs/zombie/variant