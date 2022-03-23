# bomb handler

#bouncing physics
execute as @s at @s run function math:bounce

#schedule bomb to explode
execute if entity @s[tag=dan.nbt_bomb_tnt,tag=!dan.initBombTimer] run function dan.reap:item_handling/bomb_handling/bomb_init

#schedule smoke bomb to explode
execute if entity @s[tag=!dan.explodedSmokeBomb,tag=dan.nbt_bomb_smoke,tag=!dan.initBombTimer] run function dan.reap:item_handling/bomb_handling/smoke_bomb_init

#smoking particles
execute at @s[tag=!dan.explodedSmokeBomb] positioned ~ ~0.4 ~ run particle minecraft:smoke

#smoke bomb effects
execute at @s[tag=dan.explodedSmokeBomb] run particle minecraft:cloud ~ ~ ~ 2 1.5 2 0.001 80
execute at @s[tag=dan.explodedSmokeBomb] run effect give @e[distance=..2.5] invisibility 2 0 true
execute at @s[tag=dan.explodedSmokeBomb] run playsound minecraft:block.smoker.smoke ambient @a[distance=..15] ~ ~ ~ 1.5 0.5