execute unless score @s cooldownFrostStomp matches 10.. run return fail
scoreboard players set @s cooldownFrostStomp 9
execute unless entity @e[tag=bswt.iceStatue,distance=..8] run return fail
scoreboard players set @s cooldownFrostStomp 0
summon minecraft:marker ~ ~1 ~ {Tags:["bswt.frostbiteStompMarker"]}
