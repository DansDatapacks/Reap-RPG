# scurry mechanic (executes as old mob AI)

#tag @s to be transfered to new mob for tracking
tag @s add dan.am_scurryingButterfly

#summon new mob AI
summon minecraft:bat ~ ~100 ~ {Silent:1b,Tags:["dan.am_scurrying","global.ignore"],ActiveEffects:[{Id:14b,Amplifier:2b,Duration:2000000,ShowParticles:0b}]}

#copy @s data to new mob
data modify entity @e[tag=dan.am_scurrying,limit=1] {} merge from entity @s {}

##edit new mob
#sync ID (for Marker)
scoreboard players operation @e[tag=dan.am_scurryingButterfly] dan.syncID = @s dan.syncID
#tp to old mob
execute at @s run tp @e[tag=dan.am_scurryingButterfly] ~ ~ ~ ~ ~
#set timer for suicide
execute store result score @e[tag=dan.am_scurryingButterfly] dan.timer run time query gametime
scoreboard players operation @e[tag=dan.am_scurryingButterfly] dan.timer += #160 dan.data
schedule function dan.reap:mob_handling/behavior/fauna/end_fauna 160t
#init tag
tag @e[tag=dan.am_scurryingButterfly] add dan.am_scurryingInit
#remove unecessary tags
tag @e[tag=dan.am_scurryingButterfly] remove global.ignore
#remove tracking tag
tag @e[tag=dan.am_scurryingButterfly] remove dan.am_scurryingButterfly

#kill old mob
function dan.main:utility/kill_entity