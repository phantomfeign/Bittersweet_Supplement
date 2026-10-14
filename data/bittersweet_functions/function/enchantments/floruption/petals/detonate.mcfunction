execute as @e[tag=!bswt.floruptionCaster,distance=..3] run damage @s 2 magic
playsound block.azalea_leaves.break player @a ~ ~ ~ 4 1
playsound block.leaf_litter.break player @a ~ ~ ~ 4 1.5
playsound block.azalea_leaves.break player @a ~ ~ ~ 3 1
playsound block.leaf_litter.break player @a ~ ~ ~ 3 1.5
playsound entity.generic.explode player @a ~ ~ ~ 2 2
particle minecraft:dust_pillar{block_state:"minecraft:oak_leaves",color:[0.25, 1.0, 0.25, 1.0]} ~ ~ ~ 1 1 1 0.2 10
particle minecraft:tinted_leaves{color:[0.604, 0.702, 0.259, 1.0]} ~ ~ ~ 1 1 1 0 5
kill @s