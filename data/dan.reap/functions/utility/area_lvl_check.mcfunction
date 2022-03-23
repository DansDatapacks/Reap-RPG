# executed at an entity to check the level of surrounding players and calculate an 'area level' for difficulty/rarity of loot

##get variables
#number of players (50 block radius)
execute at @s store result score ##ofPlayers dan.temp if entity @a[distance=..50]
#combined level of players (50 block radius)
scoreboard players operation #LvlSum dan.temp += @a[distance=..50] dan.level

##calc
#multiply sum of levels(lvlsum) by 10
scoreboard players operation #LvlSum dan.temp *= #10 dan.data
#divide lvlsum / #ofplayers to get the Average Level of Players within 50 blocks
scoreboard players operation #LvlSum dan.temp /= ##ofPlayers dan.temp
tellraw @s[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Raw Avg Lvl (of Players within 50 blocks) is calculated to be: ","color":"gray"},{"score":{"name":"#LvlSum","objective":"dan.temp"},"color":"dark_gray"}]
#divide to revert to actual minecraft levels
scoreboard players operation #LvlSum dan.temp /= #10 dan.data
tellraw @s [{"text":"[] Actual Avg Lvl (of Players within 50 blocks) is calculated to be: ","color":"gray"},{"score":{"name":"#LvlSum","objective":"dan.temp"},"color":"dark_gray"}]

##determine area lvl (dan.temp = Avg Level of Players within 50 blocks)
#only commons
execute if score #LvlSum dan.temp matches ..14 run scoreboard players set @s dan.areaLvl 1
#commons and uncommons
execute if score #LvlSum dan.temp matches 15..20 run scoreboard players set @s dan.areaLvl 2
#uncommons
execute if score #LvlSum dan.temp matches 21..34 run scoreboard players set @s dan.areaLvl 3
#uncommons and rares
execute if score #LvlSum dan.temp matches 35..40 run scoreboard players set @s dan.areaLvl 4
#rares
execute if score #LvlSum dan.temp matches 41..54 run scoreboard players set @s dan.areaLvl 5
#rares and fableds
execute if score #LvlSum dan.temp matches 55..60 run scoreboard players set @s dan.areaLvl 6
#fableds
execute if score #LvlSum dan.temp matches 61..74 run scoreboard players set @s dan.areaLvl 7
#fableds and mythicals
execute if score #LvlSum dan.temp matches 75..80 run scoreboard players set @s dan.areaLvl 8
#mythicals
execute if score #LvlSum dan.temp matches 81.. run scoreboard players set @s dan.areaLvl 9

#default (common)
execute unless score @s dan.areaLvl matches 1..9 run scoreboard players set @s dan.areaLvl 1

#debug message
tellraw @s [{"text":"[] Area Lvl (50 blocks) is calculated to be: ","color":"gray"},{"score":{"name":"@s","objective":"dan.areaLvl"},"color":"dark_gray"}]

#reset scores
scoreboard players reset #LvlSum