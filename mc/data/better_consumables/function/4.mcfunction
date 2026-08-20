#4.mcfunction
$item replace entity @s hotbar.$(slot) with $(id) $(count)

$item modify entity @s hotbar.$(slot) {"function": "minecraft:set_components","components": $(components)}