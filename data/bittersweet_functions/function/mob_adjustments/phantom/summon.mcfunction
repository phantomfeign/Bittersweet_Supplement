say The night is young.
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run return run say Cannot spawn!

#remove ritual blocks
setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
setblock ~ ~-2 ~ air
execute if block ~ ~-3 ~ minecraft:amethyst_block run setblock ~ ~-3 ~ air

#set time to night
time set minecraft:night
weather thunder

#MAHORAGA!!!
scoreboard players set #NightTerror NightTerrorAlive 1
summon minecraft:phantom ~ ~5 ~ {Tags:["NightTerror","SpawnChecked"],PersistenceRequired:1b,}
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:max_health base set 200
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:movement_speed base set 0.9
attribute @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:scale base set 3
data modify entity @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] Health set value 200.0f
effect give @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:resistance 4 255 true
effect give @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] minecraft:strength infinite 2 true
tag @e[type=minecraft:phantom,tag=NightTerror] remove Stunned
data modify entity @e[type=minecraft:phantom,tag=NightTerror,sort=nearest,limit=1] DeathLootTable set value "minecraft:entities/night_terror"

#create particles and play sound
particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.1 40 force
particle minecraft:portal ~ ~ ~ 0.5 1 0.5 0.5 80 force
particle minecraft:end_rod ~ ~ ~ 0.3 0.8 0.3 0.1 30 force
summon minecraft:lightning_bolt ^ ^-10 ^ {VisualOnly:1b}
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1

#bossbar
bossbar add bittersweet:night_terror {"text":"Night Terror","color":"white"}
bossbar set bittersweet:night_terror max 200
bossbar set bittersweet:night_terror color blue
bossbar set bittersweet:night_terror style notched_10
