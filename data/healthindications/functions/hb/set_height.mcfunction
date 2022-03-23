# applies entity's height for healthbar position (executes as mob/player)

#vanilla mobs
execute as @s[type=#healthindications:height/short] run scoreboard players set @s hbi.barHeight 1
execute as @s[type=#healthindications:height/medium] run scoreboard players set @s hbi.barHeight 2
execute as @s[type=#healthindications:height/tall] run scoreboard players set @s hbi.barHeight 3
execute as @s[type=#healthindications:height/very_tall] run scoreboard players set @s hbi.barHeight 4

#height api
function #healthindications:height_api

#default
execute unless score @s hbi.barHeight matches 0..4 run scoreboard players set @s hbi.barHeight 0