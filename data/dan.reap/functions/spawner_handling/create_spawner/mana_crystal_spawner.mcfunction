# mana crystal spawner

#create spawner AEC
summon minecraft:area_effect_cloud ~ ~.8 ~ {Tags:["dan.spawner","dan.mob_spawner","global.ignore","dan.editManaCrystal"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#set spawner's mob ID
execute as @e[tag=dan.editManaCrystal] run function dan.reap:utility/set_mob_id

#set dark or light mana
execute as @e[tag=dan.editManaCrystal] if score @s dan.mobID matches 1..300 run function dan.reap:spawner_handling/create_spawner/light_mana
execute as @e[tag=dan.editManaCrystal] if score @s dan.mobID matches 301.. run function dan.reap:spawner_handling/create_spawner/dark_mana

#remove tag
execute as @e[tag=dan.editManaCrystal] run tag @s remove dan.editManaCrystal