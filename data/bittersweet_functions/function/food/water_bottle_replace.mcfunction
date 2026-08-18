execute store success score @s WaterBottleFound run clear @s minecraft:potion[potion_contents={potion:"minecraft:water"},!custom_data~{bittersweet_water:1b}] 1

execute if score @s WaterBottleFound matches 0 store success score @s WaterBottleFound run clear @s minecraft:potion[custom_data~{bittersweet_water:1b}] 1

execute if score @s WaterBottleFound matches 1 run give @s minecraft:potion[custom_data={bittersweet_water:1b},max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}] 1

advancement revoke @s only bittersweet_functions:food/water_collect
tag @s remove WaterCollect