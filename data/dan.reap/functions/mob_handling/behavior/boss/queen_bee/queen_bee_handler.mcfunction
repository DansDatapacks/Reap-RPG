# butterfly behavior handler (executes as bee AI if players are nearby)

#tag desired entity for syncing
tag @e[type=!minecraft:bee,tag=dan.boss_queen_bee] add dan.syncID_desired

#sync begin
function dan.main:utility/sync_begin

#kill if no AI found
execute as @e[type=minecraft:armor_stand,tag=dan.boss_queen_bee_model,tag=dan.syncID] unless entity @e[type=minecraft:husk,tag=dan.boss_queen_bee_hitbox,tag=dan.syncID] run function dan.main:utility/kill_entity
execute unless entity @e[type=minecraft:husk,tag=dan.boss_queen_bee_hitbox,tag=dan.syncID] run function dan.main:utility/kill_entity

##handle data changes
#bee (AI)
execute as @s[type=minecraft:bee,tag=dan.boss_queen_bee_AI] if data entity @s {HasNectar:1b} run data merge entity @s {HasNectar:0b}

#sync damaged
execute if entity @e[type=minecraft:husk,tag=dan.boss_queen_bee_hitbox,tag=dan.syncID,tag=dan.hb_damaged] run tag @e[type=minecraft:armor_stand,tag=dan.boss_queen_bee_model,tag=dan.syncID] add dan.hb_damaged

##sounds
execute if entity @e[type=minecraft:husk,tag=dan.boss_queen_bee_hitbox,tag=dan.syncID,tag=dan.hb_damaged] at @s run playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 1.5

##handle animation (Marker)
#animation timer
execute as @e[type=minecraft:armor_stand,tag=dan.boss_queen_bee_model,tag=dan.syncID] if score @s dan.animTimer matches 1.. run scoreboard players remove @s dan.animTimer 1
#animation trigger
execute as @e[type=minecraft:armor_stand,tag=dan.boss_queen_bee_model,tag=dan.syncID] unless score @s dan.animTimer matches 1.. run function dan.reap:mob_handling/behavior/boss/queen_bee/anim

##boss AI


#sync end
function dan.main:utility/sync_end