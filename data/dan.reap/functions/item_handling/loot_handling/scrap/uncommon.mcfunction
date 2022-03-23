# give ununcommon scrap

#reset trigger
advancement revoke @a[tag=dan.queue_uncommon_scrap] only dan.reap:crafting/scrap/scrap_uncommon
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_sword
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_axe
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_tome
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_armor_boots_iron
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_armor_leggings_iron
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_armor_chestplate_iron
recipe take @a[tag=dan.queue_uncommon_scrap] dan.reap:scrapping_uncommon_armor_helmet_iron

#sound
execute at @a[tag=dan.queue_uncommon_scrap] run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 0.5 1.7

#take recipe item
clear @a[tag=dan.queue_uncommon_scrap] minecraft:structure_void 1
#give scrap
loot give @a[tag=dan.queue_uncommon_scrap] loot dan.reap:scrap/uncommon

tag @a[tag=dan.queue_uncommon_scrap] remove dan.queue_uncommon_scrap