# detect item entity nbt

#reset tags
tag @s remove dan.itemCount1
tag @s remove dan.itemCount2
tag @s remove dan.itemCount4

#count
execute if data entity @s {Item:{Count:1b}} run tag @s add dan.itemCount1
execute if data entity @s {Item:{Count:2b}} run tag @s add dan.itemCount2
execute if data entity @s {Item:{Count:4b}} run tag @s add dan.itemCount4

#reset timer
scoreboard players reset @s dan.timer