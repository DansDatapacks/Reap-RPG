# food handler

#player ate cate (block)
execute as @a[scores={dan.eatcake=1..}] run scoreboard players set @s math.temp -4
execute as @a[scores={dan.eatcake=1..}] run function math:health/apply
scoreboard players set @a dan.eatcake 0

#disable hunger (if too low, raise the food bar, and vice versa. keep it in the sweet spot to allow sprinting and food eating all the time)
execute as @a[scores={dan.foodlevel=..7}] run effect give @s minecraft:saturation 1 0 true
execute as @a[scores={dan.foodlevel=12..}] run effect give @s minecraft:hunger 1 200 true
execute as @a[scores={dan.foodlevel=12..}] run effect clear @s minecraft:saturation