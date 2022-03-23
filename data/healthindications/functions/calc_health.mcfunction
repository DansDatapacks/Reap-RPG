# calculate health

#get current health
execute store result score @s hbi.health run data get entity @s Health

#get base max health
execute store result score @s hbi.healthM run attribute @s minecraft:generic.max_health get
#add absorption effect to max health
execute store result score @s hbi.healthAbsorp run data get entity @s AbsorptionAmount
scoreboard players operation @s hbi.healthM += @s hbi.healthAbsorp

#if current health is bigger than my max, set my max to my current health
execute if score @s hbi.health > @s hbi.healthM at @s run scoreboard players operation @s hbi.healthM = @s hbi.health

#calculate
scoreboard players operation @s hbi.healthP = @s hbi.health
scoreboard players operation @s hbi.healthP *= #100 dan.data
scoreboard players operation @s hbi.healthP /= @s hbi.healthM

#if there was a change in health, detect damage
execute if score @s hbi.healthOld matches 0.. unless score @s hbi.healthOld = @s hbi.health at @s run function healthindications:damage_detect

#save current ratio
scoreboard players operation @s hbi.healthOld = @s hbi.health

#reset
tag @s remove hbi.calc_health