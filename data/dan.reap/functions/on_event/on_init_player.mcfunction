# init player

#init
gamemode adventure @s
clear @s
xp set @s 0 points
xp set @s 0 levels
effect give @s minecraft:hunger 1 200 true

##advancements
advancement revoke @s everything
#adventurer
advancement grant @s until dan.reap:adventurer/adventurer_root

#recipes
recipe take @s *

#starting items
loot give @s loot dan.reap:tool/harvesting_scythe
loot give @s loot dan.reap:tool/basic_fishing_rod
loot give @s loot dan.reap:loot_chest/common
loot give @s loot dan.reap:artifact/ancient_waystone
loot give @s loot dan.reap:tool/backpack
execute at @s run loot spawn ~ ~ ~ loot dan.reap:kit/common_weapon

#init objectives
scoreboard players set @s dan.manaM 30
scoreboard players reset @s dan.mana
scoreboard players operation @s dan.staminaM = #staminaMax dan.data
scoreboard players operation @s dan.stamina = @s dan.staminaM
scoreboard players operation @s dan.staminaRM = #staminaRegenMax dan.data

#init ID
execute unless score @s dan.reap.ID matches 1.. run function dan.reap:utility/set_player_reap_id

#init tag
tag @s add dan.reap_initPlayer
scoreboard players operation @s dan.data = #ReapVersion dan.data

#init announcement (discord and version)
#tellraw @s [{"text":"█ ","color":"gray"},{"text":"Join Our Discord","bold":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://discord.gg/XzAMHST"},"hoverEvent":{"action":"show_text","value":[{"text":"See development. Report bugs. Discuss and suggest mechanics. Click here to Join.","color":"white"}]}},{"text":"\n█\n█ ","color":"gray"},{"text":"Follow development on our Trello board","bold":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://trello.com/b/bWy8SLhy/skylands-rpg-mechanics"},"hoverEvent":{"action":"show_text","value":[{"text":"Click here to see the Trello board site.","color":"white"}]}},{"text":"\n█\n█ ","color":"gray"},{"text":"Thanks for joining Skylands RPG Open Testing!","color":"yellow","bold":false},{"text":"\n█ ","color":"gray"},{"text":"    -Ver: InDev 1.","color":"aqua","bold":true},{"score":{"name":"#reap","objective":"dan.version"},"color":"aqua","bold":true},{"text":".","color":"aqua","bold":true},{"score":{"name":"#reap","objective":"dan.reload"},"color":"aqua","bold":true}]