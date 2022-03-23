# inits custom mobs

##reap custom mobs
#loot chest
execute as @s[tag=dan.loot_chest] run function dan.reap:mob_handling/init/custom_mob/loot_chest/loot_chest

#dark mana crystal
execute as @s[tag=dan.dark_mana] run function dan.reap:mob_handling/init/custom_mob/dark_mana_crystal

#light mana crystal
execute as @s[tag=dan.light_mana] run function dan.reap:mob_handling/init/custom_mob/light_mana_crystal

##fauna
#butterfly
execute as @s[tag=dan.am_butterfly] run function dan.reap:mob_handling/init/custom_mob/butterfly/butterfly
#frog
execute as @s[tag=dan.am_frog] run function dan.reap:mob_handling/init/custom_mob/frog/frog

##other custom mobs
#queen bee
execute as @s[tag=dan.boss_queen_bee] run function dan.reap:mob_handling/init/custom_mob/queen_bee

#default
execute as @s[tag=!dan.initCustomMob] run function dan.reap:mob_handling/init/custom_mob/default

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Custom Mob Initialized","color":"gray"}]