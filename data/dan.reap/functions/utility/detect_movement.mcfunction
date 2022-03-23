# detects movement

#reset tag
tag @a remove dan.moveDetect

#walking
execute as @a if score @s dan.walk matches 1.. run tag @s add dan.moveDetect
#sprinting
execute as @a if score @s dan.sprint matches 1.. run tag @s add dan.moveDetect
#swimming
execute as @a if score @s dan.swim matches 1.. run tag @s add dan.moveDetect
#falling
execute as @a if score @s dan.fall matches 1.. run tag @s add dan.moveDetect
#flying
execute as @a if score @s dan.fly matches 1.. run tag @s add dan.moveDetect