# per_tick

##detecting
#detect player movement
function dan.reap:utility/detect_movement

##handling
#mana handler
function dan.reap:mana_handling/mana_handler

#xp handler
function dan.reap:xp_handling/xp_handler

#stamina handler
function dan.reap:stamina_handling/handle_stamina

#item handler
function dan.reap:item_handling/item_handler

#spawner handler
function dan.reap:spawner_handling/spawner_handler

#mob handler
function dan.reap:mob_handling/mob_handler

#build handler
function dan.reap:build_handling/build_handler

#ambience handler
function dan.reap:ambience_handling/ambience_handler

#reset players that havent played on the recent version
execute as @a unless score @s dan.data = #ReapVersion dan.data run tag @s remove dan.reap_initPlayer
#init new player
execute as @a[tag=!dan.reap_initPlayer] run function dan.reap:on_event/on_init_player

#reset stats
scoreboard players set @a dan.sneak 0
scoreboard players set @a dan.jump 0
scoreboard players set @a dan.walk 0
scoreboard players set @a dan.sprint 0
scoreboard players set @a dan.attack 0
scoreboard players set @a dan.swim 0
scoreboard players set @a dan.climb 0
scoreboard players set @a dan.fall 0
scoreboard players set @a dan.damaged 0
scoreboard players set @a dan.fly 0