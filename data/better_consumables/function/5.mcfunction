#5.mcfunction
#4.mcfunction
$item replace entity @s weapon.offhand with $(id) $(count)

$item modify entity @s weapon.offhand {"function": "minecraft:set_components","components": $(components)}