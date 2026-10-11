$execute if items entity @s $(slot) mace run function bittersweet_functions:loops/actionbar/items/mace/build

$execute if items entity @s $(slot) *[custom_data~{summon_abyss_ray:true}] run function bittersweet_functions:loops/actionbar/items/abyss_ray/abyss_ray

$execute if items entity @s $(slot) *[custom_data~{summon_sonic_boom:true}] run function bittersweet_functions:loops/actionbar/items/sonic_boom/sonic_boom

$execute if items entity @s $(slot) *[custom_data~{summon_fangs_straight:true}] run function bittersweet_functions:loops/actionbar/items/tomes/tomes
$execute if items entity @s $(slot) *[custom_data~{summon_fangs_radius:true}] run function bittersweet_functions:loops/actionbar/items/tomes/tomes

$execute as @a if items entity @s $(slot) #minecraft:spears[minecraft:enchantments~[{enchantments:"minecraft:lunge",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/lunge/lunge

$execute as @a if items entity @s $(slot) #minecraft:spears[minecraft:enchantments~[{enchantments:"minecraft:lunge",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/lunge/lunge

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"bittersweet_supplement:overload",levels:1}]] \
run function bittersweet_functions:loops/actionbar/items/overload/overload
