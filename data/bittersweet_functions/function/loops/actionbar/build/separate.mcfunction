execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] \
run data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}
execute if predicate bittersweet_functions:enchantment/actionbar/mainhand \
run data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}
