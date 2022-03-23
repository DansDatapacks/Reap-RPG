# summon poison cloud

#summon poison cloud
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:120,Tags:["dan.spellPoisonCloudEntity","dan.initPoisonCloud","dan.spellSummonedEntity","global.ignore"]}

##calculate and set damage
#get ratio
scoreboard players operation @s dan.temp = @s dan.damage
scoreboard players operation @s dan.temp /= #3 dan.data
#set damage score
scoreboard players operation @e[tag=dan.initPoisonCloud,sort=nearest,limit=1] dan.damage = @s dan.temp
#reset temp
scoreboard players reset @s dan.temp

#remove init tag
tag @e[tag=dan.initPoisonCloud] remove dan.initPoisonCloud