#0.mcfunction
advancement revoke @s only better_consumables:used_item

#this is an example
function better_consumables:example_function/0


data modify storage better_consumables:temp data.temp.offhand set from entity @s equipment.offhand
data modify storage better_consumables:temp data.temp.selected set from entity @s SelectedItem
data modify storage better_consumables:temp data.temp.selected.slot set from entity @s SelectedItemSlot



item replace entity @s weapon.mainhand with air
function better_consumables:1

execute store result storage better_consumables:temp data.temp.id int 1 run scoreboard players add #new 0.better_consumables.id 1
scoreboard players operation @s 0.better_consumables.id = #new 0.better_consumables.id


data modify storage better_consumables:temp data.players append from storage better_consumables:temp data.temp

data remove storage better_consumables:temp data.temp

advancement revoke @s only better_consumables:t_trigger

schedule function better_consumables:s 1t
schedule function better_consumables:s2 2t