# healthbar handler (Mob Damaged)

#if there wasn't a tracked Marker, spawn one
execute as @s[tag=hbi.syncMob] unless entity @e[type=area_effect_cloud,tag=hbi.syncMarker] at @s anchored eyes positioned ^ ^ ^ run function healthindications:hb/summon_healthbar

#tp tagged Markers to @s
execute if entity @s[scores={hbi.barHeight=0},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] ~ ~ ~
execute if entity @s[scores={hbi.barHeight=1},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] ~ ~0.2 ~
execute if entity @s[scores={hbi.barHeight=2},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] ~ ~0.3 ~
execute if entity @s[scores={hbi.barHeight=3},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] ~ ~0.8 ~
execute if entity @s[scores={hbi.barHeight=4},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] ~ ~1.3 ~

#update Marker's health score from @s
execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=area_effect_cloud,tag=hbi.syncMarker,limit=1,sort=nearest] hbi.healthP = @s[tag=hbi.syncMob] hbi.healthP

#update Marker's health display (as Marker)
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=area_effect_cloud,tag=hbi.syncMarker] run function healthindications:hb/update_healthbar_hud