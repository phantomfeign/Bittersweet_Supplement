data remove storage damage_item:durability item_info
data modify storage damage_item:durability item_info set from entity @s SelectedItem

scoreboard players set #damage damage_item 0
execute if data storage damage_item:durability item_info.components."minecraft:damage" run execute \
store result score #damage damage_item run data get storage damage_item:durability item_info.components."minecraft:damage"

$scoreboard players add #damage damage_item $(dmg)

scoreboard players set #max_durability damage_item 1
execute store result score #max_durability damage_item run data get storage damage_item:durability item_info.components."minecraft:max_damage"

execute if score #max_durability damage_item matches 1.. if score #damage damage_item >= #max_durability damage_item run playsound minecraft:entity.item.break player @a ~ ~ ~ 4
execute if score #max_durability damage_item matches 1.. if score #damage damage_item >= #max_durability damage_item run return run item replace entity @s weapon.mainhand with minecraft:air

execute store result storage damage_item:durability damage int 1 run scoreboard players get #damage damage_item
function bittersweet_functions:utility/damage_item/apply_macro with storage damage_item:durability

#/function bittersweet_functions:utility/damage_item/calculate