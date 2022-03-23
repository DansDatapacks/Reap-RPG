# summons damage indicator AEC

##damage indication process
tag @s add dan.diSpawn

#init height
execute unless score @s hbi.barHeight matches 0.. run function healthindications:hb/set_height

#summon AEC
execute if entity @s[scores={hbi.barHeight=0}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~-0.3 ~ {CustomNameVisible:1b,Duration:30,Tags:["dan.di","dan.diSetName"],CustomName:'{"text":""}'}
execute if entity @s[scores={hbi.barHeight=1}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~-0.1 ~ {CustomNameVisible:1b,Duration:30,Tags:["dan.di","dan.diSetName"],CustomName:'{"text":""}'}
execute if entity @s[scores={hbi.barHeight=2}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:30,Tags:["dan.di","dan.diSetName"],CustomName:'{"text":""}'}
execute if entity @s[scores={hbi.barHeight=3}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Duration:30,Tags:["dan.di","dan.diSetName"],CustomName:'{"text":""}'}
execute if entity @s[scores={hbi.barHeight=4}] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~1.0 ~ {CustomNameVisible:1b,Duration:30,Tags:["dan.di","dan.diSetName"],CustomName:'{"text":""}'}

#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector"]}
execute as @e[tag=dan.air_detector] at @s run function healthindications:utility/find_air

#set sign
execute at @e[tag=dan.air_detector] run setblock ~ ~ ~ minecraft:acacia_sign

#change nbt
execute if score @s hbi.healthOld > @s hbi.health at @e[tag=dan.air_detector] run data merge block ~ ~ ~ {Text1:'[{"text":"-","color":"red"},{"score":{"name":"@e[tag=dan.diSpawn,limit=1,sort=nearest]","objective":"dan.temp"},"color":"red"}]'}
execute if score @s hbi.healthOld < @s hbi.health at @e[tag=dan.air_detector] run data merge block ~ ~ ~ {Text1:'[{"text":"+","color":"green"},{"score":{"name":"@e[tag=dan.diSpawn,limit=1,sort=nearest]","objective":"dan.temp"},"color":"green"}]'}

#modify AEC name/remove setname tag
execute at @e[tag=dan.air_detector] run data modify entity @e[tag=dan.diSetName,limit=1,sort=nearest] CustomName set from block ~ ~ ~ Text1
tag @e[tag=dan.diSetName,limit=1,sort=nearest] remove dan.diSetName

#end air block detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~ ~ minecraft:air
kill @e[tag=dan.air_detector]

#end damage indication process
tag @s remove dan.diSpawn

#reset temp variable
scoreboard players reset @s dan.temp