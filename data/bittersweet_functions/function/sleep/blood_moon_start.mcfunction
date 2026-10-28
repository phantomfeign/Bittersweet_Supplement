tellraw @a {"text":"A terrible night is upon us..","color":"#57588a"}
scoreboard players set #sleep BloodMoonActive 1
time set night
weather thunder
execute as @a run function bittersweet_functions:sleep/blood_moon_fx

execute as @a positioned ~ 200 ~ positioned over motion_blocking run summon minecraft:phantom ~ ~ ~ {Tags:[SpawnBypass],Motion:[1,1,0]}
execute as @a positioned ~ 200 ~ positioned over motion_blocking run summon minecraft:phantom ~ ~ ~ {Tags:[SpawnBypass],Motion:[1,1,1]}
execute as @a positioned ~ 200 ~ positioned over motion_blocking run summon minecraft:phantom ~ ~ ~ {Tags:[SpawnBypass],Motion:[0,2,1]}
execute as @a positioned ~ 200 ~ positioned over motion_blocking run summon minecraft:phantom ~ ~ ~ {Tags:[SpawnBypass],Motion:[1,1,1]}
