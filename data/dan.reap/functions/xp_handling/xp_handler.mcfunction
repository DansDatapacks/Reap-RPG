# xp handler

execute if entity @e[type=minecraft:experience_orb] run kill @e[type=minecraft:experience_orb]

#level cap
execute as @a[scores={dan.level=101..}] run xp set @s 100 levels