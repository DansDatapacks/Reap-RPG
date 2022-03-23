# gives players the proper loot from a loot chest

#common
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.common] run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/common
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.common] run xp add @s 3 points

#uncommon
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.uncommon] run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/uncommon
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.uncommon] run xp add @s 18 points

#rare
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.rare] run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/rare
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.rare] run xp add @s 35 points

#fabled
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.fabled] run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/fabled
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.fabled] run xp add @s 65 points

#mythical
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.mythical] run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/mythical
execute at @s if entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest,tag=dan.mythical] run xp add @s 200 points

#artifact
#execute at @s if  entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest] {Item:{tag:{reap_id:"loot_chest",rarity:"artifact"}}} run loot spawn ~ ~ ~ loot dan.reap:loot_chest_drops/artifact
#execute at @s if  entity @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest] {Item:{tag:{reap_id:"loot_chest",rarity:"artifact"}}} run xp add @s 300 points

#sound
playsound minecraft:block.barrel.open player @s ~ ~ ~ 1 1.5

#kill thrown loot box
execute at @s as @e[type=minecraft:item,tag=!global.ignore,sort=nearest,limit=1,tag=dan.nbt_loot_chest] run kill @s