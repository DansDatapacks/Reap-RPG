#scans current chunk even if it has been previously scanned

#summon scanning AEC
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}

#set AEC position (find sub-chunk 16x16x16)
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[1] double 16 run data get entity @s Pos[1] 0.0625
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

#scan chunk at AEC
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] at @s run function dan.reap:build_handling/scan/init_scan_chunk