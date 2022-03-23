# bossbar 1

#name
execute if entity @s[type=minecraft:elder_guardian] run bossbar set healthindications:bossbar4 name {"text":"Elder Guardian","color":"white"}
execute if entity @s[type=minecraft:evoker] run bossbar set healthindications:bossbar4 name {"text":"Evoker","color":"white"}
execute if entity @s[type=minecraft:ravager] run bossbar set healthindications:bossbar4 name {"text":"Ravager","color":"white"}
execute if entity @s[type=minecraft:piglin_brute] run bossbar set healthindications:bossbar4 name {"text":"Piglin Brute","color":"white"}

#color
execute if entity @s[type=minecraft:elder_guardian] run bossbar set healthindications:bossbar4 color white
execute if entity @s[type=minecraft:evoker] run bossbar set healthindications:bossbar4 color blue
execute if entity @s[type=minecraft:ravager] run bossbar set healthindications:bossbar4 color red
execute if entity @s[type=minecraft:piglin_brute] run bossbar set healthindications:bossbar4 color yellow

#max health
execute store result bossbar healthindications:bossbar4 max run scoreboard players get @s hbi.healthM

#current health
execute store result bossbar healthindications:bossbar4 value run data get entity @s Health

#tag affected players
tag @a[tag=hbi.enabledBossbar] add hbi.bossbar4