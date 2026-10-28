execute store result storage bswt.snowball.spawn Xscale double 0.0001 run random value 8..30
execute store result storage bswt.snowball.spawn Zscale double 0.0001 run random value 8..30

execute store result storage bswt.snowball.spawn Yscale double 0.0001 run random value 5..20

data modify storage bswt.snowball.spawn Tags set value bswt.SnowCannonBall 
function bittersweet_functions:utility/spawn_snowball with storage bswt.snowball.spawn