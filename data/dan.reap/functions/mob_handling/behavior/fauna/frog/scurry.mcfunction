# scurry mechanic (executes as old mob AI)

#set timer for suicide
execute store result score @s dan.timer run time query gametime
scoreboard players operation @s dan.timer += #160 dan.data
schedule function dan.reap:mob_handling/behavior/fauna/end_fauna 160t

#init tag
tag @s add dan.am_scurryingInit