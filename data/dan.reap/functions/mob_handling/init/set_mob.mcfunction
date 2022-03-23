# set mob

#set mob's rarity
function dan.reap:mob_handling/init/set_rarity

#set mob's strength (for vanilla mobs, mobs that differ based on nbt, and custom mobs)
function dan.reap:mob_handling/init/set_strength

##funnel into 3 levels of strength
#weak
execute as @s[tag=dan.weak] run function dan.reap:mob_handling/init/mob/weak
#strong
execute as @s[tag=dan.strong] run function dan.reap:mob_handling/init/mob/strong
#default (other)
execute as @s[tag=!dan.strong,tag=!dan.weak] run function dan.reap:mob_handling/init/mob/default