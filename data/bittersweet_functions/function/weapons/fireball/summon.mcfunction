scoreboard players set @s threw_snowball 0
execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{bswt.fireball_snowball:1b}}}},sort=nearest,limit=1] run \
summon minecraft:fireball ^ ^1 ^1 {Tags:["bswt.player_fireball"],ExplosionPower:1}

execute at @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] run playsound minecraft:item.firecharge.use

data modify entity @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] \
Owner set from entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{bswt.fireball_snowball:1b}}}},sort=nearest,limit=1] Owner
data modify entity @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] \
Motion set from entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{bswt.fireball_snowball:1b}}}},sort=nearest,limit=1] Motion

kill @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{bswt.fireball_snowball:1b}}}},sort=nearest,limit=1]
