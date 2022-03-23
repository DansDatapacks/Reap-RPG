scoreboard players set item_id dan.temp 2

# If holding stack, give message
execute store result score stack_size dan.temp run data get entity @s SelectedItem.Count
execute if score stack_size dan.temp matches 2.. run title @s actionbar {"text":"Cannot open stacked backpacks","color":"red"}

# If already opened, teleport my minecart to me
execute store result score opened dan.temp if data entity @s SelectedItem.tag.dan_reap.opened
execute if score opened dan.temp matches 1 run scoreboard players operation id dan.temp = @s dan.ID
execute at @s if score opened dan.temp matches 1 positioned ~ ~1.5 ~ as @e[type=chest_minecart,tag=dan_reap.backpack_minecart,distance=0.5..] if score @s dan.ID = id dan.temp run tp @s ~ ~ ~

# Else open it
execute if score stack_size dan.temp matches 1 if score opened dan.temp matches 0 run function dan.reap:item_handling/backpack_handling/open