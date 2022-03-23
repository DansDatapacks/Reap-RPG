# summon landmark AEC

#summons landmark AEC
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["dan.landmark"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#init landmark
execute at @s as @e[distance=..0.5,type=area_effect_cloud,tag=dan.landmark] run function dan.landmarks:init/landmark