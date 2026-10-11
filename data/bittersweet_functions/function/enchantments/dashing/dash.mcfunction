execute unless score @s dashingDashTimer matches 2.. run return fail
tag @s remove canDash
tag @s remove dashEligible
scoreboard players set @s dashingDashTimer 0
particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 3 force @a
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 4 2
playsound minecraft:entity.player.attack.nodamage player @s ~ ~ ~ 4 0.3