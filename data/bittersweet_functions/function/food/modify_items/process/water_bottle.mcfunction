#water
execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @s minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run give @s minecraft:potion[max_stack_size=64,minecraft:custom_name={"text":"Vial of Water","italic":false},potion_contents={potion:"minecraft:water"}]
execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @s minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run clear @s minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] 1
