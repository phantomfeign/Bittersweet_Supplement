#Normal attacks
execute unless entity @s[tag=Stunned] run function bittersweet_functions:mob_adjustments/phantom/attack/boost_dive
execute unless entity @s[tag=Stunned] run function bittersweet_functions:mob_adjustments/phantom/attack/boost_ram

#Stunned: fall
execute if entity @s[tag=Stunned] run function bittersweet_functions:mob_adjustments/phantom/attack/stunned_tick

#vexes
scoreboard players add @s PhantomVexTimer 1
execute if score @s PhantomVexTimer matches 300 run function bittersweet_functions:mob_adjustments/phantom/attack/summon_vex
execute if score @s PhantomVexTimer matches 300 run function bittersweet_functions:mob_adjustments/phantom/attack/summon_vex
execute if score @s PhantomVexTimer matches 300 run function bittersweet_functions:mob_adjustments/phantom/attack/summon_vex
execute if score @s PhantomVexTimer matches 300 run scoreboard players set @s PhantomVexTimer 0