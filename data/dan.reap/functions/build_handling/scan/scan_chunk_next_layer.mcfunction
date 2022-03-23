# scan procedure (executes as scanning AEC)

#next layer
scoreboard players add @s dan.data 1
tp ~ ~1 ~-15

#kill at end of all 16 layers
execute if score @s dan.data matches 16.. run kill @s

#reset scores
scoreboard players set @s dan.temp 0