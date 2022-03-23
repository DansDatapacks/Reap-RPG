# init count of items around player

#tag
execute at @a[tag=dan.initCountTag] run tag @e[distance=..6,type=item,tag=!global.ignore] add dan.itemCheckCount

#get timer
execute at @a[tag=dan.initCountTag] store result score @e[distance=..6,type=item,tag=!global.ignore] dan.timer run time query gametime
execute at @a[tag=dan.initCountTag] run scoreboard players operation @e[distance=..6,type=item,tag=!global.ignore] dan.timer += #40 dan.data

#schedule
schedule function dan.main:utility/item_nbt_count_init 40t

#remove tag
tag @a[tag=dan.initCountTag] remove dan.initCountTag