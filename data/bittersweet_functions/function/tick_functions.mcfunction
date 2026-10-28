#KILL EXP
execute as @e[type=experience_orb] run kill @s
#SILVERFISH
execute as @e[type=minecraft:silverfish,tag=!bswt.spawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter

#CREEPER 
execute at @e[type=area_effect_cloud,tag=!creeper_aec_check] run function bittersweet_functions:mob_adjustments/individual_mobs/creeper/aec_check

#SPIDER
execute as @e[type=#bittersweet_functions:spiders] at @s as @a[distance=..25,limit=1] at @s run function bittersweet_functions:mob_adjustments/individual_mobs/spiders/replace_light

#PLAYER DEATH
execute as @e[type=player,tag=!died_recently,scores={Deaths=1..}] run function bittersweet_functions:misc/health/death

#HOOK TICK
execute as @e[tag=cannotAttack] run function bittersweet_functions:enchantments/hook/weakness_tick

#FIREWORK PILLAGER AIM ASSIST
execute as @e[type=minecraft:pillager,tag=bswt.fireworkPillager] if entity @a[distance=..8] at @s facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~
execute as @a at @s run function bittersweet_functions:tick_players

#FIRE DEBUFF
execute as @e[type=!player,type=!#minecraft:arrows,type=!minecraft:small_fireball,type=!minecraft:fireball,predicate=bittersweet_functions:is_on_fire] at @s run function bittersweet_functions:misc/mob_effect/fire/apply

#ICE STATUES
execute as @e[tag=bswt.iceStatue,nbt=!{Health:100.0f}] at @s run function bittersweet_functions:enchantments/frostbite/ice_statue/shatter

#FROSTBITE STOMP
execute as @e[type=marker,tag=bswt.frostbiteStompMarker] at @s run function bittersweet_functions:enchantments/frostbite/stomp/tick

#FLORUPTION
execute as @e[type=block_display,tag=bswt.verdumPetal] at @s run function bittersweet_functions:enchantments/floruption/petals/tick

#ABYSS RAY
execute as @e[type=marker,tag=bswt.abyss_ray] at @s run function bittersweet_functions:weapons/abyss_ray/tick

#SONIC BOOM
execute as @e[type=marker,tag=bswt.sonicBoom] at @s run function bittersweet_functions:weapons/sonic_boom/tick
