data remove storage bswt.durability.damage item_info
$data modify storage bswt.durability.damage item_info set from entity @s $(slot)
$data modify storage bswt.durability.damage hand_slot set value $(hand_slot)

scoreboard players set #damage bswt.damage_item 0
execute if data storage bswt.durability.damage item_info.components."minecraft:damage" run execute \
store result score #damage bswt.damage_item run data get storage bswt.durability.damage item_info.components."minecraft:damage"

$scoreboard players add #damage bswt.damage_item $(dmg)
$scoreboard players remove #damage bswt.damage_item $(heal)

scoreboard players set #max_durability bswt.damage_item 1
execute store result score #max_durability bswt.damage_item run data get storage bswt.durability.damage item_info.components."minecraft:max_damage"

execute if score #max_durability bswt.damage_item matches 1.. if score #damage bswt.damage_item >= #max_durability bswt.damage_item run playsound minecraft:entity.item.break player @a ~ ~ ~ 4
$execute if score #max_durability bswt.damage_item matches 1.. if score #damage bswt.damage_item >= #max_durability bswt.damage_item run return run item replace entity @s $(hand_slot) with minecraft:air

execute store result storage bswt.durability.damage damage int 1 run scoreboard players get #damage bswt.damage_item
function bittersweet_functions:utility/bswt.damage_item/apply_macro with storage bswt.durability.damage
