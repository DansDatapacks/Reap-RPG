# give common scrap

#reset trigger
advancement revoke @a[tag=dan.queue_common_scrap] only dan.reap:crafting/scrap/scrap_common
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_sword
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_axe
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_tome
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_boots_hide
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_boots_chain
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_leggings_hide
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_leggings_chain
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_chestplate_hide
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_chestplate_chain
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_helmet_hide
recipe take @a[tag=dan.queue_common_scrap] dan.reap:scrapping_common_armor_helmet_chain

#sound
execute at @a[tag=dan.queue_common_scrap] run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 0.5 1.7

#take recipe item
clear @a[tag=dan.queue_common_scrap] minecraft:structure_void 1
#give scrap
loot give @a[tag=dan.queue_common_scrap] loot dan.reap:scrap/common

tag @a[tag=dan.queue_common_scrap] remove dan.queue_common_scrap