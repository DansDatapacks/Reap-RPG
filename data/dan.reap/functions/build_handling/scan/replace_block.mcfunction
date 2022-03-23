# checks which block was detected and executes proper handling of that block

#mob spawners
execute if block ~ ~ ~ minecraft:spawner at @s align xyz positioned ~0.5 ~ ~0.5 run function dan.reap:build_handling/replace/spawner

#containers (chests, barrels, etc.)
execute if block ~ ~ ~ #dan.reap:container if data block ~ ~ ~ Items[0] at @s align xyz positioned ~0.5 ~ ~0.5 run function dan.reap:build_handling/replace/container
execute if block ~ ~ ~ #dan.reap:container if data block ~ ~ ~ LootTable at @s align xyz positioned ~0.5 ~ ~0.5 run function dan.reap:build_handling/replace/container

#lockable blocks (if not already locked)
execute if block ~ ~ ~ #dan.reap:lockable unless data block ~ ~ ~ Lock run function dan.reap:build_handling/replace/lockable