# gore api

#light mana crystal
execute if entity @s[type=minecraft:slime,tag=dan.light_mana] run scoreboard players set @s dan.temp 0
execute if entity @s[type=minecraft:slime,tag=dan.light_mana] run particle minecraft:block minecraft:white_stained_glass ~ ~ ~ .1 0 .1 0.8 15
execute if entity @s[type=minecraft:slime,tag=dan.light_mana] run playsound minecraft:block.glass.break block @a[distance=..10] ~ ~ ~ 1 1.3

#dark mana crystal
execute if entity @s[type=minecraft:slime,tag=dan.dark_mana] run scoreboard players set @s dan.temp 0
execute if entity @s[type=minecraft:slime,tag=dan.dark_mana] run particle minecraft:block minecraft:purple_stained_glass ~ ~ ~ .1 0 .1 0.8 15
execute if entity @s[type=minecraft:slime,tag=dan.dark_mana] run playsound minecraft:block.glass.break block @a[distance=..10] ~ ~ ~ 1 .4