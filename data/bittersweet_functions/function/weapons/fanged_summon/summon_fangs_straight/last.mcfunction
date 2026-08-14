execute as @a[tag=bittersweet_fang_caster] at @s rotated ~0 0 positioned ^ ^ ^4 positioned over motion_blocking summon minecraft:evoker_fangs run data modify entity @s Owner set from entity @a[tag=bittersweet_fang_caster,limit=1] UUID
tag @a[tag=bittersweet_fang_caster] remove bittersweet_fang_caster
