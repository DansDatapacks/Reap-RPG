# pull (pulls executed entity towards entity with math.pulling tag)

#face nearest pulling entity
tp @s ~ ~ ~ facing entity @e[tag=math.pulling,sort=nearest,limit=1]

execute store result score @s math.x run data get entity @s Pos[0] 1000
execute store result score @s math.y run data get entity @s Pos[1] 1000
execute store result score @s math.z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s math.dx run data get entity @s Pos[0] 1000
execute store result score @s math.dy run data get entity @s Pos[1] 1000
execute store result score @s math.dz run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-0.1

scoreboard players operation @s math.dx -= @s math.x
scoreboard players operation @s math.dy -= @s math.y
scoreboard players operation @s math.dz -= @s math.z

execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s math.dx
execute store result entity @s Motion[1] double 0.003 run scoreboard players get @s math.dy
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s math.dz