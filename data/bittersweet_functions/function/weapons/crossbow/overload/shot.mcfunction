execute unless predicate bittersweet_functions:enchantment/overload/crossbow run return fail
item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/loaded/false

function bittersweet_functions:weapons/crossbow/overload/remove_ammo {current:1,next:0}
function bittersweet_functions:weapons/crossbow/overload/remove_ammo {current:2,next:1}
function bittersweet_functions:weapons/crossbow/overload/remove_ammo {current:3,next:2}
function bittersweet_functions:weapons/crossbow/overload/remove_ammo {current:4,next:3}

function bittersweet_functions:loops/actionbar/build/call
execute as @s run advancement revoke @s only bittersweet_functions:weapon/overload/shot
