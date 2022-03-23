# sync check (execute as markers)

#remove sync tag (should be from from AI)
tag @s remove dan.syncMob

#kill desynced markers
kill @s[type=armor_stand,tag=dan.mobMarker,tag=!dan.syncMarker]

#remove sync tag
tag @s[type=armor_stand,tag=dan.mobMarker,tag=dan.syncMarker] remove dan.syncMarker