# summon tornado

#summon tornado
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["dan.spellTornadoEntity","dan.initTornado","math.pulling","dan.spellSummonedEntity","global.ignore"]}

#set damage score
scoreboard players operation @e[tag=dan.initTornado,sort=nearest,limit=1] dan.damage = @s dan.damage

#sound
playsound item.elytra.flying ambient @a[distance=..20] ~ ~ ~ 1 2

#remove init tag
tag @e[tag=dan.initTornado] remove dan.initTornado