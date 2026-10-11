execute if predicate bittersweet_functions:is_on_ground run tag @s add boundingJumpEligible
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove jumped
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove releasedJump
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove canBoundingJump
execute as @a[predicate=bittersweet_functions:is_on_ground] run scoreboard players set @s playerJumps 0
execute as @a[predicate=!bittersweet_functions:is_on_ground] if score @s playerJumps matches 0 run scoreboard players add @s playerJumps 1

execute as @s[tag=boundingJumpEligible] if score @s playerJumps matches 1.. run tag @s add jumped
execute as @s[tag=boundingJumpEligible] run scoreboard players set @s boundingJumps 0
execute as @s[tag=boundingJumpEligible] run scoreboard players set @s playerJumps 0

execute as @s[tag=jumped] unless predicate bittersweet_functions:holding_jump run tag @s add releasedJump
execute as @s[tag=jumped] unless predicate bittersweet_functions:holding_jump run tag @s remove jumped

execute as @s[tag=releasedJump] if score @s boundingJumps matches 0 if predicate bittersweet_functions:holding_jump run tag @s add canBoundingJump
execute as @s[tag=releasedJump] if predicate bittersweet_functions:holding_jump run tag @s remove releasedJump
