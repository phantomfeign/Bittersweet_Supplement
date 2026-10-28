function bittersweet_functions:utility/remove_temp_advancements

#stackz
function bittersweet_functions:misc/modify_items/check

#hunger
execute if score @s Hunger matches 10.. run effect give @s minecraft:hunger 1 255 true
execute if score @s Hunger matches ..6 run effect give @s minecraft:saturation 1 1 true
execute if score @s Hunger matches ..6 run effect clear @s minecraft:hunger

#reset exp
execute unless stopwatch anvil_timer ..20 run tag @a[tag=UsingAnvil] remove UsingAnvil
execute as @s[tag=!UsingAnvil] run experience set @s 0 levels
execute as @s[tag=!UsingAnvil] run experience set @s 0 points
execute as @s[tag=UsingAnvil] run experience set @s 54 levels

#cramped
execute as @s[tag=Cramped] if block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s remove Cramped
execute as @s[tag=!Cramped] unless block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s add Cramped

#spawners
execute if predicate bittersweet_functions:surface_spawn unless predicate bittersweet_functions:can_see_sky run function bittersweet_functions:structure/mob_spawners/replace_spawners
execute unless predicate bittersweet_functions:surface_spawn run function bittersweet_functions:structure/mob_spawners/replace_spawners

#adrenaline
function bittersweet_functions:misc/adrenaline/tick

    #WEAPON CD
#lunge
execute unless score @s cooldownLunge matches 3.. run scoreboard players add @s cooldownLunge 1
execute if score @s cooldownLunge matches 3 run tag @s add canLunge

#mace
execute unless score @s cooldownMaceWind matches 10.. run scoreboard players add @s cooldownMaceWind 1
execute unless score @s cooldownMaceMine matches 2.. run scoreboard players add @s cooldownMaceMine 1

#tomes
execute unless score @s cooldownTomes matches 5.. run scoreboard players add @s cooldownTomes 1

#abyss_ray
execute unless score @s cooldownAbyssRay matches 5.. run scoreboard players add @s cooldownAbyssRay 1

#sonic_amplifier
execute unless score @s cooldownSonicAmplifier matches 10.. run scoreboard players add @s cooldownSonicAmplifier 1

#rapier dash
execute unless score @s cooldownRapierDash matches 4.. run scoreboard players add @s cooldownRapierDash 1

#frostbite
execute unless score @s cooldownFrostStomp matches 10.. run scoreboard players add @s cooldownFrostStomp 1

#storm shell
execute unless score @s cooldownStormShell matches 10.. run scoreboard players add @s cooldownStormShellSeconds 1
execute if score @s cooldownStormShellSeconds matches 60.. run scoreboard players add @s cooldownStormShell 1
execute if score @s cooldownStormShellSeconds matches 60.. run scoreboard players set @s cooldownStormShellSeconds 0

    #ENCHANT CD
#VERDURE
execute if predicate bittersweet_functions:enchantment/verdure/either_hand if predicate bittersweet_functions:enchantment/verdure/light run function bittersweet_functions:enchantments/verdure/tick

#FLORUTPION
execute if entity @s[tag=bswt.floruptionCaster] unless entity @e[type=minecraft:block_display,tag=bswt.verdumPetal,distance=..20] run tag @s remove bswt.floruptionCaster

#actionbar cooldown display
function bittersweet_functions:loops/actionbar/build/call

#hp recovery
execute if entity @s[scores={MaxHealth=..19}] run function bittersweet_functions:misc/health/hp_recovery

#dash
execute unless score @s dashingDashTimer matches 3.. run scoreboard players add @s dashingDashTimer 1
execute if score @s dashingDashTimer matches 2 run playsound minecraft:block.chiseled_bookshelf.insert.enchanted player @s ~ ~ ~ 1 1
