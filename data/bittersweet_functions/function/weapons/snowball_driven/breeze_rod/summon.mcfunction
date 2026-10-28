advancement revoke @s only bittersweet_functions:weapon/thrown_projectiles/breeze_rod

function bittersweet_functions:utility/spawn_snowball {Xscale:0.001,Yscale:0.001,Zscale:0.001,Tags:bswt.breeze_rod_snowball}

execute as @e[type=minecraft:snowball,tag=bswt.breeze_rod_snowball,sort=nearest,limit=1] run \
summon minecraft:breeze_wind_charge ^ ^1 ^1 {Tags:["bswt.player_breeze_rod","bswt.timed_projectile"]}

execute at @e[type=minecraft:breeze_wind_charge,tag=bswt.player_breeze_rod,limit=1,sort=nearest] run playsound entity.breeze.shoot

data modify entity @e[type=minecraft:breeze_wind_charge,tag=bswt.player_breeze_rod,limit=1,sort=nearest] \
Owner set from entity @e[type=minecraft:snowball,tag=bswt.breeze_rod_snowball,sort=nearest,limit=1] Owner
data modify entity @e[type=minecraft:breeze_wind_charge,tag=bswt.player_breeze_rod,limit=1,sort=nearest] \
Motion set from entity @e[type=minecraft:snowball,tag=bswt.breeze_rod_snowball,sort=nearest,limit=1] Motion

kill @e[type=minecraft:snowball,tag=bswt.breeze_rod_snowball,sort=nearest,limit=1]
