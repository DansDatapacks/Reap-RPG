# runs at loot chest on death

#tp down dead entity to remove death effect
execute positioned ~ ~-1.45 ~ as @e[distance=..1,limit=1,sort=nearest,tag=dan.chest] run tp @s ~ ~-500 ~

#tp up item so its not in the ground or gets stuck
execute positioned ~ ~-1.45 ~ as @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{tag:{reap_id:"loot_chest"}}}] run tp ~ ~1.8 ~

#advancement
execute at @s run advancement grant @a[distance=..5] only dan.reap:adventurer/find_loot_chest