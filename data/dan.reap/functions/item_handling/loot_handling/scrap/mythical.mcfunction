# give mythical scrap

#reset trigger
advancement revoke @a[tag=dan.queue_mythical_scrap] only dan.reap:crafting/scrap/scrap_mythical
recipe take @a[tag=dan.queue_mythical_scrap] dan.reap:scrapping_mythical_sword
recipe take @a[tag=dan.queue_mythical_scrap] dan.reap:scrapping_mythical_axe
recipe take @a[tag=dan.queue_mythical_scrap] dan.reap:scrapping_tome

#sound
execute at @a[tag=dan.queue_mythical_scrap] run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 0.5 1.7

#take recipe item
clear @a[tag=dan.queue_mythical_scrap] minecraft:structure_void 1
#give scrap
loot give @a[tag=dan.queue_mythical_scrap] loot dan.reap:scrap/mythical

tag @a[tag=dan.queue_mythical_scrap] remove dan.queue_mythical_scrap