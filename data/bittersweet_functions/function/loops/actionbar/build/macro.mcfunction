$execute if items entity @s $(slot) mace run function bittersweet_functions:loops/actionbar/items/mace/build

$execute if items entity @s $(slot) *[custom_data~{summon_abyss_ray:true}] run function bittersweet_functions:loops/actionbar/items/single/abyss_ray

$execute if items entity @s $(slot) *[custom_data~{summon_sonic_boom:true}] run function bittersweet_functions:loops/actionbar/items/single/sonic_boom

$execute if items entity @s $(slot) *[custom_data~{frostbiteStomp:true}] run function bittersweet_functions:loops/actionbar/items/single/frostbite_stomp

$execute if items entity @s $(slot) *[custom_data~{bswt.stormShell:true}] run function bittersweet_functions:loops/actionbar/items/single/storm_shell

$execute if items entity @s $(slot) *[custom_data~{summon_fangs_straight:true}] run function bittersweet_functions:loops/actionbar/items/single/tomes
$execute if items entity @s $(slot) *[custom_data~{summon_fangs_radius:true}] run function bittersweet_functions:loops/actionbar/items/single/tomes

$execute as @a if items entity @s $(slot) #minecraft:spears[minecraft:enchantments~[{enchantments:"minecraft:lunge",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/single/lunge

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"bittersweet_supplement:overload",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/single/overload

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"bittersweet_supplement:verdure",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/single/verdure

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"bittersweet_supplement:floruption",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/single/floruption

