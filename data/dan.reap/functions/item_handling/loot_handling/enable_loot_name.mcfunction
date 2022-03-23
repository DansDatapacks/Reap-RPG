# enabled the name of loot items on the ground

#sets and enables name
data modify entity @s CustomName set from entity @s Item.tag.display.Name
data modify entity @s CustomNameVisible set value 1

#sets rarity color
execute if data entity @s {Item:{tag:{rarity:"common"}}} run team join dan.common @s
execute if data entity @s {Item:{tag:{rarity:"uncommon"}}} run team join dan.uncomm @s
execute if data entity @s {Item:{tag:{rarity:"rare"}}} run team join dan.rare @s
execute if data entity @s {Item:{tag:{rarity:"fabled"}}} run team join dan.fabled @s
execute if data entity @s {Item:{tag:{rarity:"mythical"}}} run team join dan.mythic @s

tag @s add dan.enabledLootName