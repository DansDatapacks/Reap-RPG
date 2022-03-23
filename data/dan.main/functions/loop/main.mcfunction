# main/per tick - runs every tick

#daytime
execute store result score #dayTime dan.data run time query daytime

#day
execute if score #dayTime dan.data matches 1000 run scoreboard players add #day dan.data 1

#difficulty change
execute store result score #difficulty dan.temp run difficulty
execute unless score #difficulty dan.data = #difficulty dan.temp run function dan.main:on_event/on_difficulty_change

#rejoin
execute as @a[scores={dan.leftGame=1..}] run function dan.main:on_event/on_rejoin

#death
execute as @a[scores={dan.died=1..}] run function dan.main:on_event/on_death

#detect respawn
execute as @e[type=minecraft:player] if score @s dan.respawn matches 1.. run function dan.main:on_event/on_respawn

#hotbar scroll
execute as @a store result score @s dan.temp run data get entity @s SelectedItemSlot
execute as @a unless score @s dan.temp = @s dan.lastSlot run function dan.main:on_event/on_hotbar_scroll
execute as @a run scoreboard players operation @s dan.lastSlot = @s dan.temp
scoreboard players reset @a dan.temp

#item nbt tagging
execute as @e[type=minecraft:item,tag=!global.ignore,tag=!dan.entityScanned] run function dan.main:utility/item_nbt_tagging

#check item counts
tag @a[scores={dan.dropped=1..}] add dan.initCountTag
execute if entity @a[scores={dan.dropped=1..}] run schedule function dan.main:utility/item_nbt_count_around_player 3t

#run Reap
execute if score #EnableDan.Reap dan.data matches 1 if score #ReapReloadCount dan.data matches 1.. run function dan.reap:loop/main

#reset stats
scoreboard players set @a dan.dropped 0
scoreboard players set @a dan.useCOAT 0

#continue loop
schedule function dan.main:loop/main 1t replace