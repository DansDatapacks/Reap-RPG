# drown effect handler

#hide the "magic" death effect and use our own
gamerule showDeathMessages false
execute as @s run tellraw @a [{"selector":"@s"},{"text":" ran out of stamina and drowned"}]
tag @s remove dan.stamina_drown
kill @s
gamerule showDeathMessages true