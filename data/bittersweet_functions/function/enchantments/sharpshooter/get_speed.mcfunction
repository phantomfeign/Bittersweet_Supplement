scoreboard players operation #speed.x bswt.projectileMath = #motion.x bswt.projectileMath
scoreboard players operation #speed.x bswt.projectileMath /= #motion.unit.x bswt.projectileMath
scoreboard players operation #speed.y bswt.projectileMath = #motion.y bswt.projectileMath
scoreboard players operation #speed.y bswt.projectileMath /= #motion.unit.y bswt.projectileMath
scoreboard players operation #speed.z bswt.projectileMath = #motion.z bswt.projectileMath
scoreboard players operation #speed.z bswt.projectileMath /= #motion.unit.z bswt.projectileMath

scoreboard players operation #speed bswt.projectileMath = #speed.x bswt.projectileMath
scoreboard players operation #speed bswt.projectileMath > #speed.y bswt.projectileMath
scoreboard players operation #speed bswt.projectileMath > #speed.z bswt.projectileMath