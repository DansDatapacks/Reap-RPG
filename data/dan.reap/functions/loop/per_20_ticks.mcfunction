# every 20 ticks

#climbing sound effect
execute as @a[tag=dan.climbing] run function dan.reap:stamina_handling/sounds/climbing_sound

#continue loop
schedule function dan.reap:loop/per_20_ticks 20t replace