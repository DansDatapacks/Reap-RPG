# damage executor (uses dan.temp)

#get current health
execute store result score @s dan.temp run data get entity @s Health 1

#edit health
execute if score #DealDamage dan.temp matches 1.. run scoreboard players operation @s dan.temp -= #DealDamage dan.temp
execute if score #HealDamage dan.temp matches 1.. run scoreboard players operation @s dan.temp += #HealDamage dan.temp

#set new health
execute store result entity @s Health float 1 run scoreboard players get @s dan.temp

#hurt effect
execute as @s run effect give @s absorption 1 2 true
execute as @s[type=#dan.reap:undead] run effect give @s instant_health 1 1 true
execute as @s[type=!#dan.reap:uninteractable] unless entity @s[type=#dan.reap:undead] run effect give @s instant_damage 1 1 true

#reset dan.temp
scoreboard players reset #DealDamage dan.temp
scoreboard players reset #HealDamage dan.temp