# ancient waystone artifact

#sound at player and nearby players
execute at @s run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 2

#hide deathmessage and kill player
gamerule doImmediateRespawn true
gamerule showDeathMessages false
kill @s
stopsound @s player
gamerule doImmediateRespawn false
gamerule showDeathMessages true

#sound again so the player hears it after the leave
playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 1 2

#tag to stop resetting of stats on death
tag @s add dan.preventStatReset

#advancement
advancement grant @s only dan.reap:adventurer/use_ancient_waystone