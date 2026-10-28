$execute if items entity @s $(hand_slot) mace unless predicate bittersweet_functions:holding_sneak run function bittersweet_functions:weapons/mace/wind_charge
$execute if items entity @s $(hand_slot) mace if predicate bittersweet_functions:holding_sneak run function bittersweet_functions:weapons/mace/mine/start {slot:$(slot),hand_slot:$(hand_slot)}
$execute if items entity @s $(hand_slot) *[custom_data~{summon_abyss_ray:true}] at @s run function bittersweet_functions:weapons/abyss_ray/start {slot:$(slot),hand_slot:$(hand_slot)}
$execute if items entity @s $(hand_slot) *[custom_data~{summon_fangs_straight:true}] run function bittersweet_functions:weapons/fanged_summon/summon_fangs_straight/first
$execute if items entity @s $(hand_slot) *[custom_data~{summon_fangs_radius:true}] run function bittersweet_functions:weapons/fanged_summon/summon_fangs_radius/first
$execute if items entity @s $(hand_slot) *[custom_data~{summon_sonic_boom:true}] at @s run function bittersweet_functions:weapons/sonic_boom/start {slot:$(slot),hand_slot:$(hand_slot)}
$execute if items entity @s $(hand_slot) *[custom_data~{frostbiteStomp:true}] at @s run function bittersweet_functions:enchantments/frostbite/stomp/start
$execute if items entity @s $(hand_slot) *[custom_data~{bswt.stormShell:true}] at @s run function bittersweet_functions:misc/storm_shell/route
