advancement revoke @s only bittersweet_functions:weapon/fireball
playsound minecraft:item.firecharge.use
#summon minecraft:fireball ^ ^1 ^2 {Tags:["player_fireball"],ExplosionPower:1, Motion:[0.0,0.0,0.0]}
# 1. Summon the fireball slightly ahead of you
execute at @p run summon minecraft:fireball ^ ^1 ^2 {Tags:["player_fireball"], ExplosionPower:1}

# 2. Immediately copy your facing direction into the fireball's momentum
execute as @e[tag=player_fireball,limit=1,sort=nearest] run data modify entity @s Motion set from entity @p Rotation
