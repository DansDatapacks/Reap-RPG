# light campfire

#set campfire block to lit
setblock ~ ~ ~ campfire[lit=true] replace

#play sound
execute at @s run playsound item.flintandsteel.use block @a ~ ~ ~ 1

#advancement
execute at @s run advancement grant @a[distance=..5] only dan.reap:adventurer/set_up_camp

#remove items
kill @s