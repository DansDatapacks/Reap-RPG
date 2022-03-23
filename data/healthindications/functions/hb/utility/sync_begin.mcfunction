# sync butterfly Marker with butterfly AI mob (Damaged Mob)

#add sync tags
tag @s add hbi.syncMob

#get hb ID
scoreboard players operation #hbi.hbi_ID dan.temp = @s hbi.ID

#tag all Markers with @s's ID
execute as @e[type=area_effect_cloud,tag=hbi.Marker] if score @s hbi.ID = #hbi.hbi_ID dan.temp run function healthindications:hb/utility/sync_found