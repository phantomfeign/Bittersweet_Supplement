function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"carrots",seed:"carrot"}
execute at @s positioned ~ ~ ~1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"carrots",seed:"carrot"}
execute at @s positioned ~ ~ ~-1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"carrots",seed:"carrot"}

advancement revoke @s only bittersweet_functions:food/placing_crops/placed_carrot
