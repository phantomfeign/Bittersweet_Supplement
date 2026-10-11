$execute in $(Dimension) run tp @s $(X) $(Y).9 $(Z)

#fx
effect give @s minecraft:blindness 1 2 true
$particle minecraft:end_rod $(X) $(Y) $(Z) 0 1 0 0.1 10
$execute in $(Dimension) run playsound minecraft:entity.illusioner.mirror_move player @a $(X) $(Y) $(Z) 1 1