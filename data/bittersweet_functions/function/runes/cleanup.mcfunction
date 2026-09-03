tag @s add rune_enchanted
execute on origin run advancement grant @s only bittersweet_supplement:progression/ancient_art
data modify storage runes:temp gear.enchantments set from entity @s Item.components."minecraft:enchantments"
function bittersweet_functions:misc/round_position
function bittersweet_functions:runes/enchant_fx
function bittersweet_functions:runes/combine/check_gear_type
function bittersweet_functions:runes/combine/remove_wrong
function bittersweet_functions:runes/combine/enchant_level_ups/depth_strider
function bittersweet_functions:runes/combine/apply_macro with storage runes:temp current
