#prevent mobs from dropping equipment
data modify entity @s drop_chances.head set value 0.0f
data modify entity @s drop_chances.chest set value 0.0f
data modify entity @s drop_chances.legs set value 0.0f
data modify entity @s drop_chances.feet set value 0.0f
data modify entity @s drop_chances.mainhand set value 0.0f
data modify entity @s drop_chances.offhand set value 0.0f

#zombies take 20% knockback
execute as @s[type=#minecraft:zombies] run attribute @s minecraft:knockback_resistance base set 0.6

#skeleton health reduction 20 -> 16; 20% decrease
execute as @s[type=minecraft:skeleton] run attribute @s minecraft:max_health base set 16
execute as @s[type=minecraft:skeleton] run data merge entity @s {Health:16.0f}
#25% chance to give skeletons a crossbow
execute as @s[type=minecraft:skeleton,tag=!AxeChecked] if predicate bittersweet_functions:axe_skeleton_chance run function bittersweet_functions:mob_adjustments/skeleton/axe_wielder
attribute @s[type=minecraft:skeleton,tag=AxeGiven] minecraft:attack_damage base set -4.0
tag @s[type=minecraft:skeleton] add AxeChecked

#creeper fuses reset for custom explosions
execute as @s[type=minecraft:creeper] run data modify entity @s ExplosionRadius set value 0b
execute as @s[type=minecraft:creeper] run data modify entity @s Fuse set value 20
execute as @s[type=minecraft:creeper] run effect give @s minecraft:luck infinite 99 true

#enderman teleports players and disables shields
scoreboard players add @s[type=minecraft:enderman] PullTimer 0
attribute @s[type=minecraft:enderman] minecraft:attack_damage base set 0
item replace entity @s[type=minecraft:enderman] weapon.mainhand with minecraft:wooden_axe[\
minecraft:item_model="bittersweet_supplement:invisible",minecraft:weapon={disable_blocking_for_seconds:2.0}]

#warden has knockback and debuffs but less damage
attribute @s[type=minecraft:warden] minecraft:attack_knockback base set 3
attribute @s[type=minecraft:warden] minecraft:attack_damage base set 6
effect give @s[type=warden] minecraft:jump_boost infinite 2 true

#spiders have 10 hp instead of 20 and more speed
attribute @s[type=minecraft:spider] minecraft:max_health base set 10
execute as @s[type=minecraft:skeleton] run data merge entity @s {Health:10.0f}
attribute @s[type=minecraft:spider] minecraft:movement_speed base set 0.35

#cave spiders have 8 hp instead of 12 and more speed, as well as most of their dmg budget allocated to poison instead
attribute @s[type=minecraft:cave_spider] minecraft:max_health base set 8
execute as @s[type=minecraft:skeleton] run data merge entity @s {Health:8.0f}
attribute @s[type=minecraft:cave_spider] minecraft:movement_speed base set 0.35
attribute @s[type=minecraft:cave_spider] minecraft:attack_damage base set 1
