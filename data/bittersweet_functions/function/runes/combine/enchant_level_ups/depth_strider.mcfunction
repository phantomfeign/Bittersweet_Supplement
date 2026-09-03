scoreboard players set part_1 EnchantLevelUp 0
scoreboard players set part_2 EnchantLevelUp 0

execute store result score part_1 EnchantLevelUp run data get storage runes:temp gear.enchantments."minecraft:enchantments"."minecraft:depth_strider"
execute store result score part_2 EnchantLevelUp run data get storage runes:temp rune.enchantments."minecraft:enchantments"."minecraft:depth_strider"

execute if score part_1 EnchantLevelUp matches 1.. if score part_1 EnchantLevelUp = part_2 EnchantLevelUp \
run scoreboard players add part_1 EnchantLevelUp 1

execute if score part_1 EnchantLevelUp matches 1.. if score part_1 EnchantLevelUp > part_2 EnchantLevelUp \
store result storage runes:temp current.enchantments."minecraft:enchantments"."minecraft:depth_strider" int 1 run scoreboard players get part_1 EnchantLevelUp

execute if score part_2 EnchantLevelUp matches 1.. if score part_2 EnchantLevelUp > part_1 EnchantLevelUp \
store result storage runes:temp current.enchantments."minecraft:enchantments"."minecraft:depth_strider" int 1 run scoreboard players get part_2 EnchantLevelUp