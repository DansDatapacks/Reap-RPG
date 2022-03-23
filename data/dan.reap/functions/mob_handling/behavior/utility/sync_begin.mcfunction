# sync butterfly Marker with butterfly AI mob (executes as AI)

#add sync tags
tag @s add dan.syncMob

#tag all Markers with @s's ID
execute as @e[tag=dan.mobMarker] if score @s dan.syncID = @e[tag=dan.syncMob,limit=1] dan.syncID run tag @s add dan.syncMarker

#tp tagged Markers to @s
#execute at @s[tag=dan.am_butterflyAI] run tp @e[type=armor_stand,tag=dan.syncMarker] ~ ~-1.65 ~ ~ ~

#if there isnt a tracked mob Marker, spawn one
#execute as @s[tag=dan.am_butterflyAI] unless entity @e[type=armor_stand,tag=dan.syncMarker] positioned ~ ~-1.65 ~ run function dan.reap:mob_handling/behavior/fauna/butterfly/summon_marker