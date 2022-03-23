# health bar main

##health bar
#if a mob has been damaged and near a player, it'll tag it to begin the healthbar process
execute at @a as @e[type=!#healthindications:disable_healthbar,distance=..30,tag=hbi.show_healthbar,tag=!global.ignore,tag=!hbi.valid,tag=!hbi.no_healthbar] run tag @s add hbi.valid
#begin the process to generate, sync, and update the Health Bar Marker if a Marker or Damaged Mob has been found (Marker + Mob Damaged)
execute as @e[type=!#healthindications:disable_healthbar,tag=!global.ignore,tag=hbi.valid] run function healthindications:hb/run_health_bar

#handle unsynced health bars
kill @e[type=area_effect_cloud,tag=hbi.Marker,tag=!hbi.syncedMarker]
tag @e[type=area_effect_cloud,tag=hbi.Marker,tag=hbi.syncedMarker] remove hbi.syncedMarker