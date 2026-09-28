$execute if predicate bittersweet_functions:set_bonus/$(armor_set) run attribute @s minecraft:armor modifier add bittersweet_supplement:$(armor_set) $(armor) add_value
$execute unless predicate bittersweet_functions:set_bonus/$(armor_set) run attribute @s minecraft:armor modifier remove bittersweet_supplement:$(armor_set) 
