$summon minecraft:marker ~ ~ ~ {Tags:["$(spawner_type)","spawner_marker","smithed.strict","smithed.entity"]}
$scoreboard players set @e[type=minecraft:marker,tag=spawner_marker,sort=nearest,distance=..1,limit=1] SpawnerMobCount $(mob_count)
$scoreboard players set @e[type=minecraft:marker,tag=spawner_marker,sort=nearest,distance=..1,limit=1] SpawnerTimer $(spawn_timer)
playsound minecraft:block.vault.open_shutter master @a ~ ~ ~ 8 1
setblock ~ ~ ~ minecraft:spawner{}

