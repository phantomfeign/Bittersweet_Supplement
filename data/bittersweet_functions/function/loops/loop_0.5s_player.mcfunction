#creeper sight
execute at @s run function bittersweet_functions:mob_adjustments/individual_mobs/creeper/sight_raycast
#magnet
execute if items entity @s weapon.mainhand *[custom_data~{"bswt.attractsItems":true}] \
run function bittersweet_functions:utility/magnet/attract {hand_slot:"weapon.mainhand",slot:SelectedItem}
execute if items entity @s weapon.offhand *[custom_data~{"bswt.attractsItems":true}] \
run function bittersweet_functions:utility/magnet/attract {hand_slot:"weapon.offhand",slot:equipment.offhand}
