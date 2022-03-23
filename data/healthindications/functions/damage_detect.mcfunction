# detects amount of damage hurt/healed

##calc damage done/health recovered (hb_temp and hb_health are left unaffected for calc purposes) hbi.healthOld represents the difference in health since last hit
#damage taken
execute if score @s hbi.healthOld > @s hbi.health run scoreboard players operation @s dan.temp = @s hbi.healthOld
execute if score @s hbi.healthOld > @s hbi.health run scoreboard players operation @s dan.temp -= @s hbi.health

#health recovered
execute if score @s hbi.healthOld < @s hbi.health run scoreboard players operation @s dan.temp = @s hbi.health
execute if score @s hbi.healthOld < @s hbi.health run scoreboard players operation @s dan.temp -= @s hbi.healthOld

#healthbar trigger (if damaged/healed, tag to show healthbar)
execute if entity @s[tag=!hbi.no_healthbar,tag=!hbi.hide] unless score #hbi.disable_healthbars dan.data matches 1 run function healthindications:hb/init_healthbar

#damage indicator
execute unless score #hbi.disable_damageindications dan.data matches 1 run function healthindications:di/spawn_damage_indicator

#reset temp
scoreboard players reset @s dan.temp

#gore (if damage taken)
execute if entity @s[tag=!hbi.no_gore,tag=!hbi.hide] unless score #hbi.disable_goreparticles dan.data matches 1 if score @s hbi.healthOld > @s hbi.health as @s at @s run function healthindications:di/gore