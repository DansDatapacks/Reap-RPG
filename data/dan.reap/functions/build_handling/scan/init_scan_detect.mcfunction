# detects an unscanned chunk

##summon scanning AEC (current sub-chunk, as well as surrounding ones)
#current layer
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
summon area_effect_cloud ~-16 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
summon area_effect_cloud ~ ~ ~-16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
summon area_effect_cloud ~16 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
summon area_effect_cloud ~ ~ ~16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
#layer above
summon area_effect_cloud ~ ~16 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}
#layer below
summon area_effect_cloud ~ ~-16 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.initScanAEC","global.ignore"]}

#reset scan timer
scoreboard players set @s dan.scanT 0

##check if chunk has been scanned before
#set AEC position (find sub-chunk 16x16x16)
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[1] double 16 run data get entity @s Pos[1] 0.0625
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
#detect if chunk was scanned previously
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] at @s if block ~ ~ ~ minecraft:structure_void run kill @s

##if chunk not scanned before, set it up to scan
execute as @e[type=minecraft:area_effect_cloud,tag=dan.initScanAEC] at @s run function dan.reap:build_handling/scan/init_scan_chunk