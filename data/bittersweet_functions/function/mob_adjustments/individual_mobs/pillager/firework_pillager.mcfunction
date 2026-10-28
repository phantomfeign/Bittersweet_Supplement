item replace entity @s armor.head with minecraft:iron_helmet
item replace entity @s weapon.offhand with \
minecraft:firework_rocket[minecraft:fireworks={explosions:[\
{shape:"burst",has_trail:true,colors:[2378283]},\
{shape:"burst",has_trail:true,colors:[2378283]},\
]}] 64
execute if entity @s[tag=bswt.fireworkPillager] run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if entity @s[tag=bswt.fireworkPillager] run item modify entity @s weapon.mainhand bittersweet_functions:firework_pillager_crossbow
execute if entity @s[tag=bswt.fireworkPillager] run clear @s #minecraft:arrows
