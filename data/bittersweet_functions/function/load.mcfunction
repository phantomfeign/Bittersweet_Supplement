tellraw @a {"text":"Thank you for taking your Bittersweet Supplement!","color":"#e5ed88"}
tellraw @a {"text":"Lost? Check the Advancement Menu!","color":"#9fa654"}

function bittersweet_functions:main_loop
execute as @a run function bittersweet_functions:remove_temp_advancements

#sleep
scoreboard objectives add Day dummy
scoreboard objectives add Time dummy
scoreboard objectives add SleepAttempt dummy
scoreboard players add #sleep SleepAttempt 0
scoreboard objectives add SleepStreak dummy
scoreboard objectives add BloodMoonActive dummy

#anvil
stopwatch create anvil_timer
scoreboard objectives add anvil_interaction minecraft.custom:minecraft.interact_with_anvil
scoreboard players set 0 anvil_interaction 0

#arrow
scoreboard objectives add ArrowX dummy
scoreboard objectives add ArrowY dummy
scoreboard objectives add ArrowZ dummy
scoreboard objectives add Percent dummy
scoreboard players set #70 Percent 70
scoreboard players set #100 Percent 100

#hook
scoreboard objectives add calc dummy
scoreboard objectives add weaknessTimer dummy

#gold
scoreboard objectives add GoldLogic dummy
scoreboard objectives add BloodSoakedLogic dummy
scoreboard objectives add ShieldUsed minecraft.used:minecraft.shield
scoreboard objectives add ZombieChaseTime dummy

#stuff
scoreboard objectives add Hunger food
scoreboard objectives add 0.better_consumables.id dummy

#runes
scoreboard objectives add RuneCount dummy
scoreboard objectives add RuneType dummy
scoreboard objectives add GearType dummy
scoreboard objectives add EnchantLevelUp dummy

#health
scoreboard objectives add MaxHealth dummy
scoreboard players add @a MaxHealth 0
execute as @a store result score @s MaxHealth run attribute @s minecraft:max_health get 1.0

scoreboard objectives add HealthRecoveryTime dummy
scoreboard objectives add HealthRecoverySeconds dummy
scoreboard objectives add Deaths deathCount

#dungeon
scoreboard objectives add SpawnerTimer dummy
scoreboard objectives add SpawnerMobCount dummy

#food
scoreboard objectives add SeedCount dummy
scoreboard players set #0 SeedCount 0

#phantom
scoreboard objectives add raycastloop dummy
scoreboard objectives add PhantomYVelocity dummy
scoreboard objectives add PhantomXVelocity dummy
scoreboard objectives add PhantomZVelocity dummy
scoreboard objectives add PhantomVexTimer dummy

#spider
scoreboard objectives add LightFound dummy

#enderman
scoreboard objectives add PullTimer dummy

#fireball
scoreboard objectives add FireballTimer dummy

#gamerules
gamerule natural_health_regeneration false
gamerule keep_inventory true
gamerule advance_time false
gamerule spawn_phantoms false
gamerule block_explosion_drop_decay false
gamerule mob_explosion_drop_decay false
gamerule ender_pearls_vanish_on_death false
gamerule command_block_output false
schedule function bittersweet_functions:time_extender 2t

