data modify storage bswt:actionbar_now actionbar set value []

execute store result storage bswt:actionbar_temp cooldowns.Gust int 1 run scoreboard players get * cooldownMaceWind
execute store result storage bswt:actionbar_temp cooldowns.Mine int 1 run scoreboard players get * cooldownMaceMine

#stuff
#offhand
execute if items entity @s weapon.offhand *[custom_data~{right_click:true}] run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.offhand"}

#ampersand sign
execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] if items entity @s weapon.offhand *[custom_data~{right_click:true}] \
run data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}

#mainhand
execute if items entity @s weapon.mainhand crossbow[enchantments~[{enchantments:"bittersweet_supplement:overload",levels:1}]] \
run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.mainhand"}

execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] run function bittersweet_functions:loops/actionbar/build/macro {slot:"weapon.mainhand"}

function bittersweet_functions:loops/actionbar/display with storage bswt:actionbar_now