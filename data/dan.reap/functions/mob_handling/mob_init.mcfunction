# inits mobs

#kill invalid entities
execute as @s[type=#dan.reap:neutral,tag=!global.custom_mob,tag=!dan.initNeutral] at @s if entity @s[type=!#dan.reap:neutral_valid] run function dan.reap:utility/kill_entity
execute as @s[type=#dan.reap:hostile,tag=!global.custom_mob,tag=!dan.initHostile] at @s if entity @s[type=!#dan.reap:hostile_valid] run function dan.reap:utility/kill_entity

#init invulnerable
execute as @s[type=#dan.reap:invulnerable,tag=!global.custom_mob,tag=!dan.initInvulnerable] run function dan.reap:mob_handling/init/invulnerable_init
#init vanilla mobs
execute as @s[type=#dan.reap:neutral_valid,tag=!global.custom_mob,tag=!dan.initNeutral] run function dan.reap:mob_handling/init/neutral_init
execute as @s[type=#dan.reap:hostile_valid,tag=!global.custom_mob,tag=!dan.initHostile] run function dan.reap:mob_handling/init/hostile_init
#init custom mobs
execute as @s[tag=global.custom_mob,tag=!dan.initCustomMob] run function dan.reap:mob_handling/init/custom_mob_init

#init tag
tag @s add dan.initMob