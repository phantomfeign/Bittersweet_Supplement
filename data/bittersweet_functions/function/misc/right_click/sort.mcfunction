advancement revoke @s only bittersweet_functions:misc/right_click
execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] at @s run function bittersweet_functions:misc/right_click/check {slot:weapon.mainhand}
execute unless items entity @s weapon.mainhand *[custom_data~{right_click:true}] \
if items entity @s weapon.offhand *[custom_data~{right_click:true}] at @s run function bittersweet_functions:misc/right_click/check {slot:weapon.offhand}
function bittersweet_functions:loops/actionbar/build/call
