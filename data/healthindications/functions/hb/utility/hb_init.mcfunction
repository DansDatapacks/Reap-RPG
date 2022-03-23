# init

#give ID to @s if 0 or NULL
execute unless score @s hbi.ID matches 1.. run function healthindications:hb/set_hb_id
#get @s's height
execute as @s unless score @s hbi.barHeight matches 0.. run function healthindications:hb/set_height