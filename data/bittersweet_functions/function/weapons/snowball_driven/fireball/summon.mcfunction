advancement revoke @s only bittersweet_functions:weapon/thrown_projectiles/fireball
function bittersweet_functions:utility/spawn_snowball {Xscale:0.001,Yscale:0.001,Zscale:0.001,Tags:bswt.fireball_snowball}

execute as @e[type=minecraft:snowball,tag=bswt.fireball_snowball,sort=nearest,limit=1] run \
summon minecraft:fireball ^ ^1 ^1 {Tags:["bswt.player_fireball","bswt.timed_projectile"],ExplosionPower:1}

execute at @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] run playsound minecraft:item.firecharge.use

data modify entity @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] \
Owner set from entity @e[type=minecraft:snowball,tag=bswt.fireball_snowball,sort=nearest,limit=1] Owner
data modify entity @e[type=minecraft:fireball,tag=bswt.player_fireball,limit=1,sort=nearest] \
Motion set from entity @e[type=minecraft:snowball,tag=bswt.fireball_snowball,sort=nearest,limit=1] Motion

kill @e[type=minecraft:snowball,tag=bswt.fireball_snowball,sort=nearest,limit=1]
