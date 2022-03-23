# frog behavior handler (ran as both AI and Markers individually, one at a time, if there are players near it)

##begin sync AI + Marker (AI)
#sync Marker to AI (run as AI and detect if there is a Marker with same syncID and tag them)
execute as @s[tag=dan.am_frogAI] run function dan.reap:mob_handling/behavior/utility/sync_begin
#tp tagged Markers to @s
execute at @s[tag=dan.syncMob] run tp @e[type=armor_stand,tag=dan.syncMarker] ~ ~-1.3 ~ ~ ~
#if there isnt a tracked mob Marker, spawn one
execute as @s[tag=dan.syncMob] unless entity @e[type=armor_stand,tag=dan.syncMarker] positioned ~ ~-1.3 ~ run function dan.reap:mob_handling/behavior/fauna/frog/summon_marker

##handle animation (Marker)
#set frame
execute at @s[tag=dan.syncMob] if block ~ ~-.1 ~ minecraft:air run scoreboard players set @e[tag=dan.syncMarker] dan.animFrame 2
execute at @s[tag=dan.syncMob] unless block ~ ~-.1 ~ minecraft:air run scoreboard players set @e[tag=dan.syncMarker] dan.animFrame 1
#animation speed
scoreboard players set @s dan.animSpeed 5
#animation timer
execute as @s[tag=dan.am_frogMarker] if score @s dan.animTimer matches 1.. run scoreboard players remove @s dan.animTimer 1
#animation trigger
execute as @s[tag=dan.am_frogMarker] unless score @s dan.animTimer matches 1.. run function dan.reap:mob_handling/behavior/fauna/frog/anim

##end sync (Marker + AI)
execute as @s run function dan.reap:mob_handling/behavior/utility/sync_end

##scurry mechanic (AI)
#scurry when non-sneaking player near
execute as @s[tag=dan.am_frogAI,tag=!dan.am_scurryingInit] at @s if entity @p[distance=..5,scores={dan.sneak=0},gamemode=!spectator] run function dan.reap:mob_handling/behavior/fauna/frog/scurry
#suicide scurrying butterflies when it's timer reaches 0 (timer handled in per_tick, set to a certain number when scurry.mcfunction is ran)
execute as @s[tag=dan.am_scurryingInit] if entity @s[tag=dan.endFauna] run function dan.reap:utility/kill_entity