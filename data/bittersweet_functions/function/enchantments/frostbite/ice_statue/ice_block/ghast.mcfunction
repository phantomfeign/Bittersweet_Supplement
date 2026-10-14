execute at @s run summon minecraft:block_display ~ ~ ~ \
{Tags:["bswt.frostbiteIceBlock"],\
block_state:{Name:"minecraft:ice"}}

data modify entity @e[type=minecraft:block_display,tag=bswt.frostbiteIceBlock,tag=!bswt.modifiedFrostbiteIceBlock,limit=1,sort=nearest] \
transformation set value \
{translation:[-2.5f,-4.7f,-2.5f],\
scale:[5.0f,5.0f,5.0f],\
left_rotation:[0.0f,0.0f,0.0f,1.0f],\
right_rotation:[0.0f,0.0f,0.0f,1.0f]}

tag @e[type=minecraft:block_display,tag=bswt.frostbiteIceBlock,tag=!bswt.modifiedFrostbiteIceBlock,limit=1,sort=nearest] add bswt.modifiedFrostbiteIceBlock

execute as @e[limit=1,sort=nearest,tag=bswt.frostbiteIceBlock,tag=bswt.modifiedFrostbiteIceBlock] run ride @s mount @e[limit=1,sort=nearest,tag=bswt.iceStatue]

