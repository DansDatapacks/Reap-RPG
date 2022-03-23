# rename landmark

execute at @s positioned ~ ~-1.2 ~ run data modify block ~ ~ ~ Patterns set from entity @e[sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{tag:{"banner":"true"}}},limit=1] Item.tag.BlockEntityTag.Patterns
execute at @s positioned ~ ~-1.2 ~ run kill @e[sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{tag:{"banner":"true"}}}]