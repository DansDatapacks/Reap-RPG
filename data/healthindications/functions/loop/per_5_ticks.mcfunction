#runs every 5 ticks

#calc health of hb enabled mobs near players
execute at @a as @e[type=!#healthindications:disable_health_calculation,distance=..30,tag=!global.ignore,tag=!hbi.calc_health,tag=!hbi.hide] run tag @s add hbi.calc_health
execute as @e[type=!#healthindications:disable_health_calculation,tag=!global.ignore,tag=hbi.calc_health,tag=!hbi.hide] run function healthindications:calc_health

#calc health of players
execute as @a[tag=!global.ignore,tag=!hbi.hide] run function healthindications:calc_health

#bossbars
execute unless score #hbi.disable_extrabossbars dan.data matches 1 run function healthindications:hb/bossbar/handle_bossbars

#continue loop
schedule function healthindications:loop/per_5_ticks 5t replace