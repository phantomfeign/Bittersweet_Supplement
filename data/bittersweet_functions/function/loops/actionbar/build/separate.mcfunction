execute if items entity @s weapon.mainhand *[custom_data~{right_click:true}] \
run data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}
execute if items entity @s weapon.mainhand crossbow[enchantments~[{enchantments:"bittersweet_supplement:overload",levels:1}]] \
run data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}
execute if predicate bittersweet_functions:enchantment/verdure/mainhand run \
data modify storage bswt:actionbar_now actionbar append value {"text":" | ","color":"gray"}
