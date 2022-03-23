# sync check (Damaged Mob)

#remove sync tag
tag @s[tag=hbi.syncMob] remove hbi.syncMob

#get hb ID
scoreboard players operation #hbi.hbi_ID dan.temp = @s hbi.ID

#kill desynced marker (as Marker)
execute as @e[type=area_effect_cloud,tag=hbi.Marker,tag=!hbi.syncMarker] if score @s hbi.ID = #hbi.hbi_ID dan.temp run kill @s

#remove sync tag (as Marker)
tag @e[type=area_effect_cloud,tag=hbi.Marker,tag=hbi.syncMarker,limit=1,sort=nearest] remove hbi.syncMarker