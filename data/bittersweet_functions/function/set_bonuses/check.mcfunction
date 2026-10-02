advancement revoke @s only bittersweet_functions:equipment/check_set_bonus
execute if predicate bittersweet_functions:set_bonus/gold_set run effect give @s minecraft:fire_resistance infinite 0 true
execute unless predicate bittersweet_functions:set_bonus/gold_set run effect clear @s minecraft:fire_resistance
function bittersweet_functions:set_bonuses/add_armor_macro {armor_set:"leather_set",armor:2}
function bittersweet_functions:set_bonuses/add_armor_macro {armor_set:"copper_set",armor:2}
function bittersweet_functions:set_bonuses/add_armor_macro {armor_set:"chainmail_set",armor:2}
function bittersweet_functions:set_bonuses/add_armor_macro {armor_set:"iron_set",armor:1}
execute if predicate bittersweet_functions:set_bonus/diamond_set run attribute @s minecraft:movement_speed modifier add bittersweet_supplement:diamond_set 0.008 add_value
execute unless predicate bittersweet_functions:set_bonus/diamond_set run attribute @s minecraft:movement_speed modifier remove bittersweet_supplement:diamond_set
execute if predicate bittersweet_functions:set_bonus/bronze_set run attribute @s minecraft:attack_damage modifier add bittersweet_supplement:bronze_set 1 add_value
execute unless predicate bittersweet_functions:set_bonus/bronze_set run attribute @s minecraft:attack_damage modifier remove bittersweet_supplement:bronze_set