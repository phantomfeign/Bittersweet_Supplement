advancement revoke @s only bittersweet_functions:misc/check_almanac
execute if items entity @s inventory.* written_book[custom_data={bittersweet:{almanac:1}}] run return run function bittersweet_functions:misc/almanac/delete_pages
execute if items entity @s hotbar.* written_book[custom_data={bittersweet:{almanac:1}}] run return run function bittersweet_functions:misc/almanac/delete_pages

playsound minecraft:item.book.page_turn player @s
data modify storage bittersweet:almanac book set value {title:"Almanac Pages",author:"phantomfeign",pages:[]}

execute if entity @s[advancements={bittersweet_supplement:bestiary/zombie=true}] run function bittersweet_functions:misc/almanac/pages/zombie
execute if entity @s[advancements={bittersweet_supplement:bestiary/drowned=true}] run function bittersweet_functions:misc/almanac/pages/drowned
execute if entity @s[advancements={bittersweet_supplement:bestiary/husk=true}] run function bittersweet_functions:misc/almanac/pages/husk
execute if entity @s[advancements={bittersweet_supplement:bestiary/skeleton=true}] run function bittersweet_functions:misc/almanac/pages/skeleton
execute if entity @s[advancements={bittersweet_supplement:bestiary/creeper=true}] run function bittersweet_functions:misc/almanac/pages/creeper
execute if entity @s[advancements={bittersweet_supplement:bestiary/spider=true}] run function bittersweet_functions:misc/almanac/pages/spider
execute if entity @s[advancements={bittersweet_supplement:bestiary/cave_spider=true}] run function bittersweet_functions:misc/almanac/pages/cave_spider
execute if entity @s[advancements={bittersweet_supplement:bestiary/enderman=true}] run function bittersweet_functions:misc/almanac/pages/enderman

execute unless data storage bittersweet:almanac book.pages run return run tellraw @s {"text":"Nothing to see here.","color":"gray","italic":true}
function bittersweet_functions:misc/almanac/macro with storage bittersweet:almanac book
