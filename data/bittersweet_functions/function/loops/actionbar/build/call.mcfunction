data remove storage bswt:actionbar_now actionbar

#stuff
#offhand
execute if items entity @s weapon.offhand *[custom_data~{right_click:true}] run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.offhand"}
execute if predicate bittersweet_functions:enchantment/actionbar/offhand run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.offhand"}

#separate 
execute if data storage bswt:actionbar_now actionbar run function bittersweet_functions:loops/actionbar/build/separate

#mainhand
execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.mainhand"}
execute if predicate bittersweet_functions:enchantment/actionbar/mainhand run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.mainhand"}

function bittersweet_functions:loops/actionbar/display with storage bswt:actionbar_now