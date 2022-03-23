# butterfly armorstand marker (executes as AI)

#tree frog
summon armor_stand ~ ~ ~ {Fire:32767s,Marker:1b,DisabledSlots:4129024,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dan.am_frogSetSyncID","dan.am_frog","dan.am_frogMarker","dan.am_frogTreeFrog","dan.mobMarker","global.ignore"]}

#set sync ID
scoreboard players operation @e[tag=dan.am_frogSetSyncID] dan.syncID = @s dan.syncID

#remove set sync ID tag
tag @e[tag=dan.am_frogSetSyncID] remove dan.am_frogSetSyncID