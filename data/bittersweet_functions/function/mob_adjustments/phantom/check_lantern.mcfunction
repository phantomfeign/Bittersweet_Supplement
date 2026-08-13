# Remove the advancement so it can be triggered again
say Checking for lantern...
advancement revoke @s only bittersweet_functions:mob_checks/lantern_placed_for_phantom

# Check directly below the player
execute if block ~ ~-1 ~ minecraft:carved_pumpkin if block ~ ~-2 ~ minecraft:amethyst_block run function bittersweet_functions:mob_adjustments/phantom/summon
execute if block ~ ~-2 ~ minecraft:carved_pumpkin if block ~ ~-3 ~ minecraft:amethyst_block run function bittersweet_functions:mob_adjustments/phantom/summon