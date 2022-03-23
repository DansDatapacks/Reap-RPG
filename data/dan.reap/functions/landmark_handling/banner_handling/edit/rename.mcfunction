# rename landmark

execute at @s positioned ~ ~-1.2 ~ run data modify entity @s CustomName set from entity @e[sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{id:"minecraft:name_tag"}},limit=1] Item.tag.display.Name
execute at @s positioned ~ ~-1.2 ~ run kill @e[sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{id:"minecraft:name_tag"}}]