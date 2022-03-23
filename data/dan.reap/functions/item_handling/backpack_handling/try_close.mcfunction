# Either closes or implodes (if has been put in self)

# Remove open backpacks
clear @s firework_star{dan_reap:{opened:1b}}
kill @e[type=item,distance=..10,nbt={Item:{tag:{dan_reap:{opened:1b}}}}]
tag @s remove dan_reap.has_backpack_open

# Identify my backpack minecart
scoreboard players operation id dan.temp = @s dan.ID
execute as @e[type=chest_minecart,tag=dan_reap.backpack_minecart] if score @s dan.ID = id dan.temp run tag @s add dan_reap.my_backpack_minecart

# Implode if added to self, else close and give item back to player
scoreboard players set implode dan.temp 0
execute store result score implode dan.temp if data entity @e[type=chest_minecart,tag=dan_reap.my_backpack_minecart,limit=1,sort=nearest] Items[{id:"minecraft:firework_star",tag:{dan_reap:{opened:1b}}}]
execute if score implode dan.temp matches 0 run function dan.reap:item_handling/backpack_handling/close
execute if score implode dan.temp matches 1 as @e[type=chest_minecart,tag=dan_reap.my_backpack_minecart,limit=1,sort=nearest] at @s run function dan.reap:item_handling/backpack_handling/implode