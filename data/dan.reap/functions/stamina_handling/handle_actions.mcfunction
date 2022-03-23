#action handler

#action detect
execute if entity @s[scores={dan.sprint=1..}] as @s run function dan.reap:stamina_handling/actions/sprinting
execute if entity @s[scores={dan.jump=1..}] as @s run function dan.reap:stamina_handling/actions/jumping
execute if entity @s[scores={dan.sprint=1..,dan.jump=1..}] as @s run function dan.reap:stamina_handling/actions/sprint_jumping
execute if entity @s[scores={dan.attack=1..}] as @s run function dan.reap:stamina_handling/actions/attacking
execute if entity @s[scores={dan.swim=1..}] as @s run function dan.reap:stamina_handling/actions/swimming
execute if entity @s[scores={dan.sneak=1..}] as @s run function dan.reap:stamina_handling/actions/sneaking