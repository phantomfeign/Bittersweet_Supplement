effect give @s minecraft:blindness 1 2 true

# Teleport
$execute in $(Dimension) run tp @s $(X) $(Y).9 $(Z)


# After effects
$particle minecraft:end_rod $(X) $(Y) $(Z) 0 1 0 1 10
$particle minecraft:portal $(X) $(Y).9 $(Z) 0.5 0.5 0.5 0.5 100
$execute in $(Dimension) run playsound minecraft:entity.illusioner.mirror_move player @a $(X) $(Y) $(Z) 1 1