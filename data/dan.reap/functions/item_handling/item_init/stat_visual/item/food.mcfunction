# food stats

#set stat
execute at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE010","color":"white","italic":"false"},{"text":"+","color":"dark_gray","italic":"false"},{"nbt":"Item.tag.health_regen","entity":"@e[type=minecraft:item,tag=dan.itemStatSet,limit=1]","interpret":"true","color":"dark_gray","italic":"false"}]'

#set lore
execute at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1