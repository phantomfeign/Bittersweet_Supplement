execute store result score @s PhantomXVelocity run data get entity @s Motion[0] 1000
execute store result score @s PhantomZVelocity run data get entity @s Motion[2] 1000

execute if score @s PhantomXVelocity matches 1.. run scoreboard players add @s PhantomXVelocity 100
execute if score @s PhantomXVelocity matches ..-1 run scoreboard players remove @s PhantomXVelocity 100

execute if score @s PhantomZVelocity matches 1.. run scoreboard players add @s PhantomZVelocity 100
execute if score @s PhantomZVelocity matches ..-1 run scoreboard players remove @s PhantomZVelocity 100

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s PhantomXVelocity
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s PhantomZVelocity
