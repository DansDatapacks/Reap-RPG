# launches entity forward and bounces it

execute store result score @s math.x run data get entity @s Pos[0] 1000
execute store result score @s math.y run data get entity @s Pos[1] 1000
execute store result score @s math.z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score @s math.dx run data get entity @s Pos[0] 1000
execute store result score @s math.dy run data get entity @s Pos[1] 1000
execute store result score @s math.dz run data get entity @s Pos[2] 1000

scoreboard players operation @s math.dx -= @s math.x
scoreboard players operation @s math.dy -= @s math.y
scoreboard players operation @s math.dz -= @s math.z

#high gravity (falls faster)
execute store result entity @s[tag=math.high_gravity] Motion[0] double 0.0007 run scoreboard players get @s math.dx
execute store result entity @s[tag=math.high_gravity] Motion[1] double 0.0007 run scoreboard players get @s math.dy
execute store result entity @s[tag=math.high_gravity] Motion[2] double 0.0007 run scoreboard players get @s math.dz

#low gravity (falls slower/more distance)
execute store result entity @s[tag=math.low_gravity] Motion[0] double 0.001 run scoreboard players get @s math.dx
execute store result entity @s[tag=math.low_gravity] Motion[1] double 0.001 run scoreboard players get @s math.dy
execute store result entity @s[tag=math.low_gravity] Motion[2] double 0.001 run scoreboard players get @s math.dz