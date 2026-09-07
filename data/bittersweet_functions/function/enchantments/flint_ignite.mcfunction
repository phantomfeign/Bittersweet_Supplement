tag @s add FlintArrow
execute on origin unless items entity @s weapon.offhand minecraft:flint_and_steel run return fail
execute as @s run data modify entity @s Fire set value 1000
execute on origin run item modify entity @s weapon.offhand bittersweet_functions:damage_1
execute on origin run playsound minecraft:item.flintandsteel.use player @a
particle minecraft:flame ^ ^ ^ 0 0 0 0.2 3
particle minecraft:item{item:{id:"minecraft:flint"}} ~ ~ ~ 0 0 0 0.1 3

execute on origin if items entity @s weapon.offhand minecraft:flint_and_steel[custom_data={firestarter:true}] run playsound minecraft:entity.item.break player @a
execute on origin if items entity @s weapon.offhand minecraft:flint_and_steel[custom_data={firestarter:true}] run item replace entity @s weapon.offhand with air
