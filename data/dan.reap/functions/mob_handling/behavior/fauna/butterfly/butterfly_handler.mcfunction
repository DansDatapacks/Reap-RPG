# butterfly behavior handler (ran as both AI and Markers individually, one at a time, if there are players near it)

##begin sync AI + Marker (AI)
#sync Marker to AI (run as AI and detect if there is a Marker with same syncID and tag them)
execute as @s[tag=dan.am_butterflyAI] run function dan.reap:mob_handling/behavior/utility/sync_begin
#tp tagged Markers to @s
execute at @s[tag=dan.syncMob] run tp @e[type=armor_stand,tag=dan.syncMarker] ~ ~-1.65 ~ ~ ~
#if there isnt a tracked mob Marker, spawn one
execute as @s[tag=dan.syncMob] unless entity @e[type=armor_stand,tag=dan.syncMarker] positioned ~ ~-1.65 ~ run function dan.reap:mob_handling/behavior/fauna/butterfly/summon_marker

##handle data changes
#bee (AI)
execute as @s[tag=dan.am_butterflyAI,type=minecraft:bee] if data entity @s {HasNectar:1b} run data merge entity @s {HasNectar:0b}

##handle animation (Marker)
#set animation speed (detect if there is air below the mob and set it to idle if not and if there is set to flying animation)
execute at @s[tag=dan.syncMob] if block ~ ~-.2 ~ minecraft:air as @e[type=armor_stand,tag=dan.syncMobMarker] unless score @s dan.animSpeed matches 1 run function dan.reap:mob_handling/behavior/fauna/butterfly/set_flying
execute at @s[tag=dan.syncMob] unless block ~ ~-.2 ~ minecraft:air as @e[type=armor_stand,tag=dan.syncMobMarker] unless score @s dan.animSpeed matches 20 run function dan.reap:mob_handling/behavior/fauna/butterfly/set_idle
#animation timer
execute as @s[tag=dan.am_butterflyMarker] if score @s dan.animTimer matches 1.. run scoreboard players remove @s dan.animTimer 1
#animation trigger
execute as @s[tag=dan.am_butterflyMarker] unless score @s dan.animTimer matches 1.. run function dan.reap:mob_handling/behavior/fauna/butterfly/anim

##end sync (Marker + AI)
execute as @s run function dan.reap:mob_handling/behavior/utility/sync_end

##scurry mechanic (AI)
#scurry when non-sneaking player near
execute as @s[tag=dan.am_butterflyAI,tag=!dan.am_scurryingInit] at @s if entity @p[distance=..5,scores={dan.sneak=0},gamemode=!spectator] run function dan.reap:mob_handling/behavior/fauna/butterfly/scurry
#suicide scurrying butterflies when it's timer reaches 0 (timer handled in per_tick, set to a certain number when scurry.mcfunction is ran)
execute as @s[tag=dan.am_scurryingInit] if entity @s[tag=dan.endFauna] run function dan.reap:utility/kill_entity