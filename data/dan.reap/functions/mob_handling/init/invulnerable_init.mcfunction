# invulnerable init

##set default stats
#edit data
data merge entity @s {Invulnerable:1b,CustomNameVisible:1b}
#join team (change name color)
team join dan.invul @s

##edit data
#villager
execute as @s[type=minecraft:villager] run function dan.reap:mob_handling/init/invulnerable/villager/villager_init

#default (other)
execute as @s[tag=!dan.initInvulnerable] run function dan.reap:mob_handling/init/invulnerable/default

#debug messages
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Invulnerable Mob Initialized","color":"gray"}]