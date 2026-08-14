#3.mcfunction
$data modify storage better_consumables:temp data.temp set from storage better_consumables:temp data.players[{id:$(id)}]

$data remove storage better_consumables:temp data.players[{id:$(id)}]
