function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"beetroots",seed:"beetroot_seeds"}
execute at @s positioned ~ ~ ~1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"beetroots",seed:"beetroot_seeds"}
execute at @s positioned ~ ~ ~-1 run function bittersweet_functions:food/crop_3x3/place_crop_at {crop:"beetroots",seed:"beetroot_seeds"}

advancement revoke @s only bittersweet_functions:food/placing_crops/placed_beetroot
