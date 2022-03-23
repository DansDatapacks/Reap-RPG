# mob behavior handler

#villagers
execute if score #dayTime dan.data matches 0..11999 as @e[type=minecraft:villager,tag=dan.villagerCleric] at @s if entity @p[distance=..20] run function dan.reap:mob_handling/behavior/villager/cleric

#mana crystals
execute as @e[tag=dan.mob_spawner,tag=dan.dark_mana] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/behavior/mana_crystal/dark_mana/idle
execute as @e[tag=dan.mob_spawner,tag=dan.light_mana] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/behavior/mana_crystal/light_mana/idle

#butterfly
execute as @e[tag=dan.am_butterfly] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/behavior/fauna/butterfly/butterfly_handler

#frogs
execute as @e[tag=dan.am_frog] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/behavior/fauna/frog/frog_handler

##bosses
#queen bee
execute as @e[type=bee,tag=dan.boss_queen_bee] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/behavior/boss/queen_bee/queen_bee_handler