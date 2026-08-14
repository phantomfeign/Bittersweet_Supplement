tag @s add bittersweet_fang_caster
advancement revoke @s only bittersweet_functions:weapon/used_fang_straight
execute at @a[tag=bittersweet_fang_caster] summon minecraft:marker run tp @s ~ ~ ~ ~ 0
tag @e[type=minecraft:marker,sort=nearest,limit=1] add fangSummonOrigin
execute as @e[type=minecraft:marker,tag=fangSummonOrigin,sort=nearest,limit=1] at @s rotated ~0 0 positioned ^ ^ ^1 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute as @e[type=minecraft:marker,tag=fangSummonOrigin,sort=nearest,limit=1] at @s rotated ~-60 0 positioned ^ ^ ^3 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute as @e[type=minecraft:marker,tag=fangSummonOrigin,sort=nearest,limit=1] at @s rotated ~60 0 positioned ^ ^ ^3 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
execute as @e[type=minecraft:marker,tag=fangSummonOrigin,sort=nearest,limit=1] run schedule function bittersweet_functions:weapons/fanged_summon/summon_fangs_straight/second 3t