# begins syncing process of two entites using tags and ID scores

#give executing entity sync tag
tag @s add dan.syncIDtemp
tag @s add dan.syncID

#look for desired entity and tag it
execute as @e[tag=dan.syncID_desired] if score @s dan.ID = @e[tag=dan.syncIDtemp,limit=1] dan.ID run tag @s add dan.syncID

#remove temp tag
tag @s remove dan.syncIDtemp