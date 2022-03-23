# init chunk

#summon scanning AECs
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~2 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~3 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~4 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~5 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~6 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~7 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~8 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~9 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~10 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~11 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~12 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~13 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~14 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}
summon area_effect_cloud ~15 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan.scanAEC","global.ignore"]}

#setblock
execute at @s run setblock ~ ~ ~ structure_void

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Scanning Chunk","color":"gray"}]

#kill @s
kill @s[tag=dan.initScanAEC]