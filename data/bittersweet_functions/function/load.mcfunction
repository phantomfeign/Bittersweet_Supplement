tellraw @a {"text":"Thank you for taking your Bittersweet Supplement!","color":"#e5ed88"}
tellraw @a {"text":"Lost? Check the Advancement Menu!","color":"#9fa654"}

function bittersweet_functions:main_loop
execute as @a run function bittersweet_functions:remove_temp_advancements

#sleep
scoreboard objectives add Day dummy
scoreboard objectives add Time dummy
scoreboard objectives add SleptToday dummy
scoreboard objectives add SleepStreak dummy
scoreboard objectives add SleepProcessed dummy
execute as @a run scoreboard players set #sleep SleepProcessed 0
scoreboard objectives add BloodMoonActive dummy

#anvil
stopwatch create anvil_timer
scoreboard objectives add anvil_interaction minecraft.custom:minecraft.interact_with_anvil
scoreboard players set 0 anvil_interaction 0

#arrow
scoreboard objectives add ArrowXVelocity dummy
scoreboard objectives add ArrowZVelocity dummy
scoreboard objectives add Percent dummy

scoreboard players set #70 Percent 70
scoreboard players set #100 Percent 100

#gold
scoreboard objectives add GoldLogic dummy
scoreboard objectives add BloodSoakedLogic dummy
scoreboard objectives add ShieldUsed minecraft.used:minecraft.shield
scoreboard objectives add ZombieChaseTime dummy

#stuff
scoreboard objectives add Hunger food
scoreboard objectives add 0.better_consumables.id dummy
scoreboard objectives add RuneCount dummy
scoreboard objectives add RuneType dummy
scoreboard objectives add GearType dummy
scoreboard objectives add SetDolphin dummy

#phantom
scoreboard objectives add NightTerrorAlive dummy
scoreboard objectives add raycastloop dummy
scoreboard objectives add PhantomYVelocity dummy
scoreboard objectives add PhantomXVelocity dummy
scoreboard objectives add PhantomZVelocity dummy
scoreboard objectives add PhantomVexTimer dummy

#spider
scoreboard objectives add LightFound dummy

#enderman
scoreboard objectives add PullTimer dummy

#gamerules
gamerule natural_health_regeneration false
gamerule keep_inventory true
gamerule advance_time false
schedule function bittersweet_functions:time_extender 2t

