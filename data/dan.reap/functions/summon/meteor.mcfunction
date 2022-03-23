# summon meteor

#summon meteor
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:21,Tags:["dan.spellMeteorEntity","dan.spellMeteorEntities","dan.initMeteor","dan.spellSummonedEntity","global.ignore"]}

#timer
execute store result score @e[tag=dan.initMeteor,sort=nearest,limit=1] dan.timer run time query gametime
scoreboard players operation @e[tag=dan.initMeteor,sort=nearest,limit=1] dan.timer += #20 dan.data
schedule function dan.reap:item_handling/tome_handling/utility/end_spell 20t

#set damage
scoreboard players operation @e[tag=dan.initMeteor,sort=nearest,limit=1] dan.damage = @s dan.damage

#sound
playsound minecraft:entity.enderman.teleport ambient @a[distance=..20] ~ ~ ~ 4 .1

#remove init tag
tag @e[tag=dan.initMeteor] remove dan.initMeteor