# evoker trigger

#particles
particle smoke ~ ~ ~ .75 .3 .75 0 65 force
particle falling_dust green_terracotta ~ ~.5 ~ .75 0 .75 1 25 force
#sound
playsound block.composter.fill_success ambient @a[distance=..20] ~ ~ ~ 1 0.75

#effects
summon evoker_fangs ~ ~ ~
#summon evoker_fangs ~-.5 ~ ~-.5 {Rotation:[135.0f,0.0f]}
#summon evoker_fangs ~.5 ~ ~-.5 {Rotation:[45.0f,0.0f]}
#summon evoker_fangs ~.5 ~ ~.5 {Rotation:[135.0f,0.0f]}
#summon evoker_fangs ~-.5 ~ ~.5 {Rotation:[45.0f,0.0f]}

#deal damage
scoreboard players operation #DealDamage dan.temp = @s dan.damage
execute as @e[distance=..2,team=!dan.invul,type=!#dan.reap:uninteractable,tag=!global.ignore] run function dan.reap:utility/damage

#die
kill @s