summon minecraft:block_display ~ ~1 ~ {block_state:{Name:"minecraft:moss_block"},Tags:[bswt.verdumPetal],\
transformation:{\
translation:[-0.2f,-0.2f,-0.2f],\
scale:[0.4f,0.4f,0.4f],\
left_rotation:[0.0f,0.0f,0.0f,1.0f],\
right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[tag=bswt.verdumPetal,limit=1,sort=nearest] run function bittersweet_functions:enchantments/floruption/petals/setup