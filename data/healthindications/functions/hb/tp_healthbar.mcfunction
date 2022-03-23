# tp healthbar (executes as mob/player)

#tp entity and handle height
execute if entity @s[scores={hbi.barHeight=0},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=hbi.syncMarker] ~ ~ ~ ~ ~
execute if entity @s[scores={hbi.barHeight=1},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=hbi.syncMarker] ~ ~0.2 ~ ~ ~
execute if entity @s[scores={hbi.barHeight=2},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=hbi.syncMarker] ~ ~0.3 ~ ~ ~
execute if entity @s[scores={hbi.barHeight=3},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=hbi.syncMarker] ~ ~0.8 ~ ~ ~
execute if entity @s[scores={hbi.barHeight=4},tag=hbi.syncMob] at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=hbi.syncMarker] ~ ~1.3 ~ ~ ~