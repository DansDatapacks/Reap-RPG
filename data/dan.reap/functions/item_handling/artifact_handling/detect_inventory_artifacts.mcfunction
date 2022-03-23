# detect artifacts in player's inventory

##remove current tags
tag @s remove dan.artifact_aetherian_feather
tag @s remove dan.artifact_shell_charm
tag @s remove dan.artifact_enchanted_turtle_shell
tag @s remove dan.artifact_cloud_bottle
tag @s remove dan.artifact_obsidian_skull
tag @s remove dan.artifact_aetherian_ward
tag @s remove dan.artifact_goblin_fae

##give new tags
#aetherian feather
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"aetherian_feather"}}]}] run tag @s add dan.artifact_aetherian_feather

#shell charm
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"shell_charm"}}]}] run tag @s add dan.artifact_shell_charm

#enchanted turtle shell
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"enchanted_turtle_shell"}}]}] run tag @s add dan.artifact_enchanted_turtle_shell

#cloud bottle
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"cloud_bottle"}}]}] run tag @s add dan.artifact_cloud_bottle

#obsidian skull
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"obsidian_skull"}}]}] run tag @s add dan.artifact_obsidian_skull

#aetherian ward
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"aetherian_ward"}}]}] run tag @s add dan.artifact_aetherian_ward

#goblin fae
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{reap_id:"goblin_fae"}}]}] run tag @s add dan.artifact_goblin_fae