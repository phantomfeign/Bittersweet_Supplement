#get attacker pos
execute on attacker store result score #attacker_x calc run data get entity @s Pos[0] 1000
execute on attacker store result score #attacker_z calc run data get entity @s Pos[2] 1000

#get victim pos
execute store result score #victim_x calc run data get entity @s Pos[0] 1000
execute store result score #victim_z calc run data get entity @s Pos[2] 1000

#distance set
scoreboard players operation #attacker_x calc -= #victim_x calc
scoreboard players operation #attacker_z calc -= #victim_z calc

#divide by 1000ish
execute store result storage hook_enchant:pull MotionX double 0.0003 run scoreboard players get #attacker_x calc
execute store result storage hook_enchant:pull MotionZ double 0.0003 run scoreboard players get #attacker_z calc

#sound
playsound minecraft:item.spear.lunge_1 player @a ~ ~ ~ 4 2

#use macro
function bittersweet_functions:enchantments/hook/pull_macro with storage hook_enchant:pull

effect give @s minecraft:weakness 1 255 true
scoreboard players add @s weaknessTimer 7
tag @s add cannotAttack