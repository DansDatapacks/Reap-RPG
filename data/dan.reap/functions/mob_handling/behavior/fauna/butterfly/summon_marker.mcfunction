# butterfly armorstand marker (executes as AI)

#pink
summon armor_stand ~ ~ ~ {Fire:32767s,Marker:1b,DisabledSlots:4129024,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dan.am_butterflySetSyncID","dan.am_butterfly","dan.am_butterflyMarker","dan.am_butterflyPink","dan.mobMarker","global.ignore"]}

#set sync ID
scoreboard players operation @e[tag=dan.am_butterflySetSyncID] dan.syncID = @s dan.syncID

#remove set sync ID tag
tag @e[tag=dan.am_butterflySetSyncID] remove dan.am_butterflySetSyncID