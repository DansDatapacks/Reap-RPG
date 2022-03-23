# syncs desired entities to executor's ID

#look for desired entity and sync IDs to executor
scoreboard players operation @e[tag=dan.init_syncID] dan.ID = @s dan.ID

#remove init ID tag
tag @e[tag=dan.init_syncID] remove dan.init_syncID