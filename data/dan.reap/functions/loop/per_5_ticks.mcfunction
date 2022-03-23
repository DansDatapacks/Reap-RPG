# every 5 ticks

##handle build mode
#execute as @a[tag=dan.buildmode] run function dan.reap:build_handling/build_mode/build_mode_handler
#execute as @e[type=minecraft:shulker,tag=dan.buildhitbox] run function dan.reap:build_handling/build_mode/hitbox_handler

#advancement check
execute as @a run function dan.reap:quest/check_tier

#look detect
function dan.reap:utility/look_detect

#ambience handler
function dan.reap:ambience_handling/ambience_handler_per_5_ticks

#calc stamina ratio
function dan.reap:stamina_handling/handle_stamina_percent

#death detect
function dan.reap:mob_handling/death_detect/death_detect_handler

#hud handling
execute as @a[gamemode=!creative,gamemode=!spectator] run function dan.reap:hud_handling/hud_handler

#continue loop
schedule function dan.reap:loop/per_5_ticks 5t replace