tag @s add bittersweet_fang_caster
execute as @a[tag=bittersweet_fang_caster] at @s rotated ~0 0 positioned ^ ^ ^3 summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute at @a[tag=bittersweet_fang_caster] run schedule function bittersweet_functions:weapons/summon_fangs_straight/last 15t