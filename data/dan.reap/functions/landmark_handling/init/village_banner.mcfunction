# landmark banner spawner

#places banner
execute at @s run setblock ^ ^ ^ minecraft:white_banner

#summons landmark AEC
summon minecraft:area_effect_cloud ~ ~1.2 ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:['dan.landmarks_bannerSetName',"dan.landmarks_villageLM","dan.landmarks_LM","dan.landmarks_banner","global.ignore"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#init Village AEC
execute at @s positioned ~ ~1.2 ~ as @e[distance=..0.5,type=area_effect_cloud,tag=dan.landmarks_villageLM] run function dan.landmarks:init/landmark
execute at @s positioned ~ ~1.2 ~ as @e[distance=..0.5,type=area_effect_cloud,tag=dan.landmarks_villageLM] run function dan.landmarks:init/village

##give settlement name (using placer's name)
#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector"]}
execute as @e[tag=dan.air_detector] at @s run function dan.landmarks:utility/find_air
#set sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:acacia_sign{Text1:'[{"selector":"@a[sort=nearest,limit=1]"},{"text":"\'s Settlement"}]'} replace
#set name from sign
execute at @e[tag=dan.air_detector] run data modify entity @e[tag=dan.landmarks_bannerSetName,limit=1] CustomName set from block ~ ~-1 ~ Text1
#remove edit tag
tag @e[tag=dan.landmarks_bannerSetName] remove dan.landmarks_bannerSetName
#end air detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ air
kill @e[tag=dan.air_detector]