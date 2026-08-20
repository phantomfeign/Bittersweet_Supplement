#2.mcfunction

execute store result storage better_consumables:temp data.id int 1 run scoreboard players get @s 0.better_consumables.id

function better_consumables:3 with storage better_consumables:temp data



function better_consumables:4 with storage better_consumables:temp data.temp.selected

function better_consumables:5 with storage better_consumables:temp data.temp.offhand


data remove storage better_consumables:temp data.temp
data remove storage better_consumables:temp data.id