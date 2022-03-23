# set strength of mobs based on factors other than mob type (sets dan.weak or dan.strong)

#vanilla mobs
#weak
execute as @s[type=#dan.reap:strength/weak,tag=!global.custom_mob] run tag @s add dan.weak

#strong
execute as @s[type=#dan.reap:strength/strong,tag=!global.custom_mob] run tag @s add dan.strong

#slimes
execute as @s[type=minecraft:slime,tag=!global.custom_mob] unless data entity @s {Size:0} run tag @s add dan.strong
execute if data entity @s[type=minecraft:slime,tag=!global.custom_mob] {Size:0} run tag @s add dan.weak
execute if data entity @s[type=minecraft:slime,tag=!global.custom_mob] {Size:1} run tag @s remove dan.strong

#mob strength api
function #dan.reap:mob_strength_api