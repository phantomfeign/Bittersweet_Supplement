say 1
execute if items entity @s contents #minecraft:swords run scoreboard players set @s GearType 1
execute if items entity @s contents #minecraft:spears run scoreboard players set @s GearType 2
execute if items entity @s contents #minecraft:axes run scoreboard players set @s GearType 3
execute if items entity @s contents #minecraft:pickaxes run scoreboard players set @s GearType 10
execute if items entity @s contents #minecraft:shovels run scoreboard players set @s GearType 11
execute if items entity @s contents #minecraft:hoes run scoreboard players set @s GearType 12
execute if items entity @s contents #minecraft:head_armor run scoreboard players set @s GearType 20
execute if items entity @s contents #minecraft:chest_armor run scoreboard players set @s GearType 21
execute if items entity @s contents #minecraft:leg_armor run scoreboard players set @s GearType 22
execute if items entity @s contents #minecraft:foot_armor run scoreboard players set @s GearType 23

data modify storage runes:temp current.enchantments merge from entity @s Item.components."minecraft:enchantments"
function bittersweet_functions:runes/combine/remove_wrong