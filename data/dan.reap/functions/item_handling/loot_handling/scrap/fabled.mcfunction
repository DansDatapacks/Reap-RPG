# give fabled scrap

#reset trigger
advancement revoke @a[tag=dan.queue_fabled_scrap] only dan.reap:crafting/scrap/scrap_fabled
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_sword
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_axe
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_tome
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_boots_hide
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_boots_chain
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_leggings_hide
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_leggings_chain
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_chestplate_hide
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_chestplate_chain
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_helmet_hide
recipe take @a[tag=dan.queue_fabled_scrap] dan.reap:scrapping_fabled_armor_helmet_chain

#sound
execute at @a[tag=dan.queue_fabled_scrap] run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 0.5 1.7

#take recipe item
clear @a[tag=dan.queue_fabled_scrap] minecraft:structure_void 1
#give scrap
loot give @a[tag=dan.queue_fabled_scrap] loot dan.reap:scrap/fabled

tag @a[tag=dan.queue_fabled_scrap] remove dan.queue_fabled_scrap