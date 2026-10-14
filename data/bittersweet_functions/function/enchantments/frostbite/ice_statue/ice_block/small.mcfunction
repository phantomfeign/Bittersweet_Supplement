execute at @s run summon minecraft:block_display ~ ~ ~ \
{Tags:["bswt.frostbiteIceBlock"],\
block_state:{Name:"minecraft:ice"}}

data modify entity @e[type=minecraft:block_display,tag=bswt.frostbiteIceBlock,tag=!bswt.modifiedFrostbiteIceBlock,limit=1,sort=nearest] \
transformation set value \
{translation:[-0.5f,-0.7f,-0.7f],\
scale:[1f,1.4f,1.4f],\
left_rotation:[0.0f,0.0f,0.0f,1.0f],\
right_rotation:[0.0f,0.0f,0.0f,1.0f]}

tag @e[type=minecraft:block_display,tag=bswt.frostbiteIceBlock,tag=!bswt.modifiedFrostbiteIceBlock,limit=1,sort=nearest] add bswt.modifiedFrostbiteIceBlock

execute as @e[limit=1,sort=nearest,tag=bswt.frostbiteIceBlock,tag=bswt.modifiedFrostbiteIceBlock] run ride @s mount @e[limit=1,sort=nearest,tag=bswt.iceStatue]

