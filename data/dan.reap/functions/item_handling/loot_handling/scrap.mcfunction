# scrap mechanic

execute if entity @s[nbt={Item:{tag:{rarity:"common"}}}] run loot spawn ~ ~.1 ~ loot dan.reap:scrap/common
execute if entity @s[nbt={Item:{tag:{rarity:"uncommon"}}}] run loot spawn ~ ~.1 ~ loot dan.reap:scrap/uncommon
execute if entity @s[nbt={Item:{tag:{rarity:"rare"}}}] run loot spawn ~ ~.1 ~ loot dan.reap:scrap/rare
execute if entity @s[nbt={Item:{tag:{rarity:"fabled"}}}] run loot spawn ~ ~.1 ~ loot dan.reap:scrap/fabled
execute if entity @s[nbt={Item:{tag:{rarity:"mythical"}}}] run loot spawn ~ ~.1 ~ loot dan.reap:scrap/mythical

kill @s
execute at @s run playsound minecraft:block.anvil.break block @a ~ ~ ~

#advancment
execute at @s run advancement grant @a[distance=..1] only dan.reap:adventurer/scrap_loot

#tag @s add dan.unscrappable