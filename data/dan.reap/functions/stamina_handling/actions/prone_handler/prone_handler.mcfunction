# prone handler

#delete prone if 
#execute at @s if entity @a[distance=3..] run function dan.reap:stamina_handling/actions/prone_handler/delete_prone

#delete prone if they're not sneaking anymore
execute at @s if entity @a[tag=!dan_prone,distance=..1.5] run function dan.reap:stamina_handling/actions/prone_handler/delete_prone

#delete prone if theres no one under the prone block
execute at @s unless entity @a[distance=..1.5] run function dan.reap:stamina_handling/actions/prone_handler/delete_prone
#execute at @a[tag=dan_prone] if block ~ ~1 ~ air as @e[tag=dan_prone_block,distance=..3] at @s run function dan.reap:stamina_handling/actions/prone_handler/delete_prone