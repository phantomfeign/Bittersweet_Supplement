$execute anchored eyes positioned ^ ^ ^$(dist) if block ~ ~ ~ #bittersweet_functions:nonsolid run function bittersweet_functions:weapons/abyss_ray/one
$execute anchored eyes positioned ^ ^ ^$(dist) unless block ~ ~ ~ #bittersweet_functions:nonsolid run scoreboard players add @s abyssRayPass 1
$execute anchored eyes positioned ^ ^ ^$(dist) if entity @e[tag=!abyssRayOwner,dx=0,dy=0,dz=0] run scoreboard players add @s abyssRayPass 1
$execute anchored eyes positioned ^ ^ ^$(dist) if score @s abyssRayPass matches 1.. run function bittersweet_functions:weapons/abyss_ray/explode

