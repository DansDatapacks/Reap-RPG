# handles artifacts in player's inventory

##handle passive effects
#Aetherian Feather - Slow falling
execute as @a[tag=dan.artifact_aetherian_feather] run function dan.reap:item_handling/artifact_handling/artifact/aetherian_feather

#Shell Charm - Water breathing
execute as @a[tag=dan.artifact_shell_charm] run function dan.reap:item_handling/artifact_handling/artifact/shell_charm

#Enchanted Turtle Shell - Resistance
execute as @a[tag=dan.artifact_enchanted_turtle_shell] run function dan.reap:item_handling/artifact_handling/artifact/enchanted_turtle_shell

#Cloud Bottle - Double Jump
execute as @a[tag=dan.artifact_cloud_bottle] run function dan.reap:item_handling/artifact_handling/artifact/cloud_bottle

#Obsidian Skull - Cancel fire block damage (Not Lava)
execute as @a[tag=dan.artifact_obsidian_skull] run function dan.reap:item_handling/artifact_handling/artifact/obsidian_skull

#Aetherian Ward - Cancel wither effect damage and weakens nearby wither-based mobs
execute as @a[tag=dan.artifact_aetherian_ward] run function dan.reap:item_handling/artifact_handling/artifact/aetherian_ward

#Elder's Eye - Increases melee attack damage when in water
execute as @a[tag=dan.artifact_elders_eye] run function dan.reap:item_handling/artifact_handling/artifact/elders_eye

#Lucky Bell - Increases chance of loot chest drops from mobs
execute as @a[tag=dan.artifact_lucky_bell] run function dan.reap:item_handling/artifact_handling/artifact/lucky_bell

#Obsidian Arrowhead Pendant - Increases melee damage to fire-based mobs
execute as @a[tag=dan.artifact_obsidian_arrowhead_pendant] run function dan.reap:item_handling/artifact_handling/artifact/obsidian_arrowhead_pendant

#Goblin Fae - Automatically combines currency in the inventory into their higher tier
execute as @a[tag=dan.artifact_goblin_fae] run function dan.reap:item_handling/artifact_handling/artifact/goblin_fae

##handle on-going artifact effects
#kill double jump entities
#execute as @e[tag=dan.double_jump_entity,type=area_effect_cloud] unless score @s dan.timer matches 1.. run function dan.main:utility/kill_entity