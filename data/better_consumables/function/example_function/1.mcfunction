##
 #1.mcfunction
 #
 #
 #Created by .
##
scoreboard players set #hand 0.better_consumables.id 1
execute if items entity @s weapon.mainhand *[custom_data~{return:1b}] run return run item replace entity @s player.crafting.0 from entity @s weapon.mainhand
scoreboard players set #hand 0.better_consumables.id 2
item replace entity @s player.crafting.0 from entity @s weapon.offhand


