$execute if items entity @s $(slot) mace unless predicate bittersweet_functions:holding_sneak run function bittersweet_functions:weapons/mace/wind_charge
$execute if items entity @s $(slot) mace if predicate bittersweet_functions:holding_sneak run function bittersweet_functions:weapons/mace/mine/start
$execute if items entity @s $(slot) *[custom_data~{summon_abyss_ray:true}] at @s run function bittersweet_functions:weapons/abyss_ray/start
$execute if items entity @s $(slot) *[custom_data~{summon_fangs_straight:true}] run function bittersweet_functions:weapons/fanged_summon/summon_fangs_straight/first
$execute if items entity @s $(slot) *[custom_data~{summon_fangs_radius:true}] run function bittersweet_functions:weapons/fanged_summon/summon_fangs_radius/first
$execute if items entity @s $(slot) *[custom_data~{summon_sonic_boom:true}] at @s run function bittersweet_functions:weapons/sonic_boom/start
$execute if items entity @s $(slot) *[custom_data~{rapier_dash:true}] at @s run function bittersweet_functions:weapons/rapier_dash/dash
$execute if items entity @s $(slot) *[custom_data~{frostbiteStomp:true}] at @s run function bittersweet_functions:enchantments/frostbite/stomp/start
