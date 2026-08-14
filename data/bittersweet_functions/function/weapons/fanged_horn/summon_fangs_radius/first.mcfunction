tag @s add bittersweet_fang_caster
effect give @s slowness 2 5
effect give @s resistance 2 4
advancement revoke @s only bittersweet_functions:mob_checks/weapon/used_fang_radius
#execute at @p run effect give @e[distance=..1] minecraft:resistance 2 2 true
execute at @p run effect give @e[distance=..1] minecraft:slowness 1 10 true
execute as @a[tag=bittersweet_fang_caster] at @s rotated ~0 0 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute at @a[tag=bittersweet_fang_caster] run schedule function bittersweet_functions:weapons/fanged_horn/summon_fangs_radius/second 10t