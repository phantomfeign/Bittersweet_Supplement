#weapons
execute unless score @s GearType matches 1 run data remove storage runes:temp current.levels."minecraft:sweeping_edge"
execute unless score @s GearType matches 1..3 run data remove storage runes:temp current.levels."minecraft:sharpness"
execute unless score @s GearType matches 1..3 run data remove storage runes:temp current.levels."minecraft:smite"
execute unless score @s GearType matches 1..3 run data remove storage runes:temp current.levels."minecraft:bane_of_arthropods"
execute unless score @s GearType matches 1..3 run data remove storage runes:temp current.levels."bittersweet_supplement/blood_soaked"


#tools
execute unless score @s GearType matches 10..12 run data remove storage runes:temp current.levels."minecraft:efficiency"
execute unless score @s GearType matches 10..12 run data remove storage runes:temp current.levels."minecraft:fortune"
execute unless score @s GearType matches 10..12 run data remove storage runes:temp current.levels."minecraft:silk_touch"

#armor
execute unless score @s GearType matches 20 run data remove storage runes:temp current.levels."minecraft:aqua_affinity"

execute unless score @s GearType matches 22 run data remove storage runes:temp current.levels."minecraft:swift_sneak"
execute unless score @s GearType matches 22 run data remove storage runes:temp current.levels."minecraft:depth_strider"

execute unless score @s GearType matches 23 run data remove storage runes:temp current.levels."minecraft:soul_speed"
execute unless score @s GearType matches 23 run data remove storage runes:temp current.levels."minecraft:frost_walker"
execute unless score @s GearType matches 23 run data remove storage runes:temp current.levels."minecraft:feather_falling"

#all armor
execute unless score @s GearType matches 20..23 run data remove storage runes:temp current.levels."minecraft:protection"
execute unless score @s GearType matches 20..23 run data remove storage runes:temp current.levels."minecraft:blast_protection"
execute unless score @s GearType matches 20..23 run data remove storage runes:temp current.levels."minecraft:fire_protection"
execute unless score @s GearType matches 20..23 run data remove storage runes:temp current.levels."minecraft:projectile_protection"
execute unless score @s GearType matches 20..23 run data remove storage runes:temp current.levels."minecraft:thorns"