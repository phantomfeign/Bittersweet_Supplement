tag @s add bittersweet_fang_caster
function bittersweet_functions:weapons/fanged_summon/playnoise
effect give @s slowness 2 1 true
effect give @s resistance 2 4 true
advancement revoke @s only bittersweet_functions:weapon/used_fang_radius
execute as @a[tag=bittersweet_fang_caster] at @s rotated ~0 0 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute at @p as @e[distance=..1] unless entity @s[tag=bittersweet_fang_caster] as @s run effect give @s minecraft:resistance 2 1 true
execute at @p as @e[distance=..1] unless entity @s[tag=bittersweet_fang_caster] as @s run effect give @s minecraft:slowness 1 255 true
execute at @a[tag=bittersweet_fang_caster] run schedule function bittersweet_functions:weapons/fanged_summon/summon_fangs_radius/second 10t