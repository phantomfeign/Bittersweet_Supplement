execute if entity @e[type=minecraft:phantom,tag=NightTerror] run return fail

#set time to night
time set minecraft:night
weather thunder
function bittersweet_functions:mob_adjustments/phantom/check_alive

#MAHORAGA!!!
execute as @a[limit=1] at @s positioned over motion_blocking run summon minecraft:phantom ~ 100 ~ {Tags:["NightTerror","SpawnChecked"],PersistenceRequired:1b,}
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:max_health base set 200
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:movement_speed base set 0.9
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:scale base set 3
data modify entity @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] Health set value 200.0f
effect give @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:resistance 4 255 true
effect give @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:strength infinite 2 true
tag @e[type=minecraft:phantom,tag=NightTerror] remove Stunned
data modify entity @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] DeathLootTable set value "minecraft:entities/night_terror"

#bossbar
bossbar add bittersweet:night_terror {"text":"Night Terror","color":"white"}
bossbar set bittersweet:night_terror max 200
bossbar set bittersweet:night_terror color blue
bossbar set bittersweet:night_terror style notched_10
bossbar set bittersweet:night_terror players @a
