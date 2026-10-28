function bittersweet_functions:mob_adjustments/equipment/clear_armor
attribute @s minecraft:follow_range base set 256
attribute @s minecraft:max_health base set 16
data merge entity @s {Health:16.0f}

execute store result score #contestedRoll MobEquipmentTier run random value 0..10
execute if score @s MobEquipmentTier >= #contestedRoll MobEquipmentTier run function bittersweet_functions:mob_adjustments/individual_mobs/skeleton/variant