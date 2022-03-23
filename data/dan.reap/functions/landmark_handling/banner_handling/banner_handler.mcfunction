# runs when player near a landmark banner

#detect rename landmark
execute at @s positioned ~ ~-1.2 ~ if entity @e[limit=1,sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{id:"minecraft:name_tag"}}] run function dan.landmarks:banner/edit/rename

#detect rebanner landmark
execute at @s positioned ~ ~-1.2 ~ if entity @e[limit=1,sort=nearest,distance=..1,type=minecraft:item,nbt={Item:{tag:{"banner":"true"}}}] run function dan.landmarks:banner/edit/rebanner