# build handling

##scanning
#spawner scanner (check 5x5 around unscanned vanilla mobs for replaceable)
execute as @e[type=!#dan.reap:uninteractable,tag=!dan.scanned,tag=!global.ignore,tag=!global.custom_mob] at @s if entity @p[distance=..30] run function dan.reap:build_handling/scan/scan_current_chunk_if_unscanned

##scan handling 
#scan init every second they run/walk
execute unless score #Disable_dan.Scanning dan.data matches 1.. as @a[tag=dan.moveDetect] unless score @s dan.fly matches 1.. run scoreboard players add @s dan.scanT 1
execute unless score #Disable_dan.Scanning dan.data matches 1.. as @r[tag=dan.moveDetect] if score @s dan.scanT matches 20.. at @s align xyz positioned ~0.5 ~ ~0.5 run function dan.reap:build_handling/scan/init_scan_detect

#scan chunk
execute as @e[type=area_effect_cloud,tag=dan.scanAEC] if score @s dan.temp matches 16.. at @s run function dan.reap:build_handling/scan/scan_chunk_next_layer
execute at @a as @e[type=area_effect_cloud,tag=dan.scanAEC,limit=16,sort=nearest] at @s run function dan.reap:build_handling/scan/scan_chunk

##handle build mode
# execute as @a[tag=dan.buildmode] run function dan.reap:build_handling/build_mode/build_mode_handler
# execute as @e[type=minecraft:shulker,tag=dan.buildhitbox] run function dan.reap:build_handling/build_mode/hitbox_handler