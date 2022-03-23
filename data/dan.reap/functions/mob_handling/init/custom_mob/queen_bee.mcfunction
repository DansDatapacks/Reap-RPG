# dark mana crystal init

#set mob's min and max rarity
scoreboard players set #MinRarity dan.temp 2
scoreboard players set #MaxRarity dan.temp 3

#set mob's strength
tag @s add dan.strong

#set mob (sets rarity and base data)
function dan.reap:mob_handling/init/set_mob

#init tag
tag @s add dan.initCustomMob