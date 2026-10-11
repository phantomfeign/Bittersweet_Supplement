tag @s remove canBoundingJump
tag @s remove boundingJumpEligible
scoreboard players add @s boundingJumps 1
particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 3 force @a
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 4 1.5
playsound minecraft:entity.player.attack.nodamage player @s ~ ~ ~ 4 0.5