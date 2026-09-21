advancement revoke @s only bittersweet_functions:weapon/used_wind_mace
execute if block ~ ~-1 ~ #air run return fail
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 4 1
summon minecraft:wind_charge ~ ~ ~ {Motion:[0.0,-2.0,0.0]}
