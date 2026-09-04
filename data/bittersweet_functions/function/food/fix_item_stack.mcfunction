$execute if items entity @s inventory.* $(item)[!max_stack_size=64] run give @s $(item)[max_stack_size=64]
$execute if items entity @s hotbar.* $(item)[!max_stack_size=64] run give @s $(item)[max_stack_size=64]
$execute if items entity @s inventory.* $(item)[!max_stack_size=64] run clear @s $(item)[!max_stack_size=64] 1
$execute if items entity @s hotbar.* $(item)[!max_stack_size=64] run clear @s $(item)[!max_stack_size=64] 1
