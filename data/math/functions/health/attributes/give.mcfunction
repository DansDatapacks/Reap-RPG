# Tag
tag @s add math.health.applied_damage

# Attributes
execute if score @s math.temp matches 1024.. run function math:health/attributes/1024
execute if score @s math.temp matches 512.. run function math:health/attributes/512
execute if score @s math.temp matches 256.. run function math:health/attributes/256
execute if score @s math.temp matches 128.. run function math:health/attributes/128
execute if score @s math.temp matches 64.. run function math:health/attributes/64
execute if score @s math.temp matches 32.. run function math:health/attributes/32
execute if score @s math.temp matches 16.. run function math:health/attributes/16
execute if score @s math.temp matches 8.. run function math:health/attributes/8
execute if score @s math.temp matches 4.. run function math:health/attributes/4
execute if score @s math.temp matches 2.. run function math:health/attributes/2
execute if score @s math.temp matches 1.. run function math:health/attributes/1

# Remove
schedule function math:health/attributes/remove 2t