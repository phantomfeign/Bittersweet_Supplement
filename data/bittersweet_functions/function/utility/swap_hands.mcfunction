summon minecraft:item_display ~ ~ ~ {Tags:["mainhand_offhand_flip"]}
item replace entity @e[limit=1,sort=nearest,type=item_display,tag=mainhand_offhand_flip] container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[limit=1,sort=nearest,type=item_display,tag=mainhand_offhand_flip] container.0
kill @e[limit=1,sort=nearest,type=item_display,tag=mainhand_offhand_flip]