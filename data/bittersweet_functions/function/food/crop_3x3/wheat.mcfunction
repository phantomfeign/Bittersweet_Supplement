function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"wheat",seed:"wheat_seeds"}
execute at @s positioned ~ ~ ~1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"wheat",seed:"wheat_seeds"}
execute at @s positioned ~ ~ ~-1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"wheat",seed:"wheat_seeds"}

advancement revoke @s only bittersweet_functions:food/placing_crops/placed_wheat
