tellraw @a {"text":"Thank you for taking your Bittersweet Supplement!","color":"#e5ed88"}
tellraw @a {"text":"Lost? Check the Advancement Menu!","color":"#9fa654"}

function bittersweet_functions:main_loop
execute as @a run function bittersweet_functions:remove_temp_advancements

scoreboard objectives add GoldLogic dummy
scoreboard objectives add BloodSoakedLogic dummy
scoreboard objectives add ShieldUsed minecraft.used:minecraft.shield
scoreboard objectives add ZombieChaseTime dummy

scoreboard objectives add WaterBottleFound dummy
scoreboard objectives add Hunger food

scoreboard objectives add 0.better_consumables.id dummy

#phantom
scoreboard objectives add NightTerrorAlive dummy
scoreboard objectives add raycastloop dummy
scoreboard objectives add PhantomYVelocity dummy
scoreboard objectives add PhantomXVelocity dummy
scoreboard objectives add PhantomZVelocity dummy
scoreboard objectives add PhantomVexTimer dummy

#gamerules
gamerule natural_health_regeneration false
gamerule keep_inventory true
gamerule advance_time false
schedule function bittersweet_functions:time_extender 2t