# summon healthbar (as Damaged Mob)

##init mob
#give ID to @s if 0 or NULL
execute unless score @s[tag=hbi.syncMob] hbi.ID matches 1.. run function healthindications:hb/set_hb_id
#get @s's height
execute as @s[tag=hbi.syncMob] unless score @s hbi.barHeight matches 0.. run function healthindications:hb/set_height

#summon healthbar marker
summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["dan.hb","hbi.Marker","hbi.syncMarker","hbi.syncedMarker","hbi.setSyncID","global.ignore"],CustomNameVisible:1b,Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#give marker the same ID as @s
scoreboard players operation @e[tag=hbi.setSyncID] hbi.ID = @s[tag=hbi.syncMob] hbi.ID

#remove set sync ID tag
tag @e[tag=hbi.setSyncID] remove hbi.setSyncID

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Healthbar Summoned","color":"gray"}]