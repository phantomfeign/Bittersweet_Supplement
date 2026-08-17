execute at @p run summon minecraft:armor_stand ~ ~ ~ {Tags:["ShieldBreaker"],Silent:1b,Invisible:1b}
item replace entity @e[tag=ShieldBreaker,limit=1] weapon.mainhand with minecraft:iron_axe[minecraft:weapon={disable_blocking_for_seconds:5.0}]
execute at @p run damage @p 0.01 minecraft:player_attack by @e[tag=ShieldBreaker,limit=1]
playsound item.shield.break
kill @e[tag=ShieldBreaker]
