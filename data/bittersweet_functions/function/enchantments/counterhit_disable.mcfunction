# bittersweet_supplement:enchantments/counterhit

# Spawn an invisible, invulnerable armor stand 2 blocks above the victim.
# Marker:1b means it has no hitbox, so it cannot intercept the original attack.
execute at @s positioned ~ ~ ~ summon minecraft:armor_stand run data merge entity @s {\
    Invisible:1b,\
    Marker:1b,\
    NoGravity:1b,\
    Invulnerable:1b,\
    Silent:1b,\
    equipment:{\
        mainhand:{\
            id:"minecraft:iron_axe",\
            count:1,\
            components:{\
                "minecraft:weapon":{\
                    "item_damage_per_attack":0,\
                    "disable_blocking_for_seconds":5\
                }\
            }\
        }\
    },\
    Tags:["counterhit_proxy"]\
}


# Use the armor stand as the attacker.
# The tiny damage is only there to trigger the weapon's shield-disabling behavior.
execute at @s run damage @s 0.0001 minecraft:player_attack by @e[type=minecraft:armor_stand,tag=counterhit_proxy,distance=..3,sort=nearest,limit=1]

# Remove the temporary proxy.
kill @e[type=minecraft:armor_stand,tag=counterhit_proxy,distance=..3]