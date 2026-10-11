execute unless score @s cooldownAbyssRay matches 5.. run return fail
scoreboard players set @s cooldownAbyssRay 0
scoreboard players set @s abyssRayPass 0
tag @s add abyssRayOwner
function bittersweet_functions:utility/damage_item/calculate {dmg:1}
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 4 2

function bittersweet_functions:weapons/abyss_ray/segment {dist:0.5}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:1}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:2}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:3}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:4}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:5}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:6}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:7}
execute if score @s abyssRayPass matches 1.. run return fail
function bittersweet_functions:weapons/abyss_ray/segment {dist:8}
execute if score @s abyssRayPass matches 1.. run return fail

tag @s remove abyssRayOwner