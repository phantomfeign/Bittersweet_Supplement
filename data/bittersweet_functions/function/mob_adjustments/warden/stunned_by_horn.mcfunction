tag @e[type=warden,tag=!StunImmune] add Stunned
effect give @e[type=warden,tag=!StunImmune,distance=..10] minecraft:glowing infinite 1
effect give @e[type=warden,tag=!StunImmune,distance=..10] minecraft:slowness infinite 5
effect give @e[type=warden,tag=!StunImmune,distance=..10] minecraft:weakness infinite 1
execute as @s[tag=!StunCooldown] run schedule function bittersweet_functions:mob_adjustments/warden/end_stun 40t
execute as @s[tag=!StunCooldown] run schedule function bittersweet_functions:mob_adjustments/warden/revoke_horn 140t
tag @e[type=warden,tag=Stunned] add StunImmune
tag @s add StunCooldown
