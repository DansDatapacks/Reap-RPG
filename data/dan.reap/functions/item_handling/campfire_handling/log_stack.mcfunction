# create log stack

#place log stack
setblock ~ ~ ~ campfire[lit=false]

#play sound
execute at @s run playsound block.wood.place block @a ~ ~ ~ 1

#remove item stack
kill @s