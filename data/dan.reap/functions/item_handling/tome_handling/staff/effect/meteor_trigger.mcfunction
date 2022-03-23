# fireball trigger

#particles
particle minecraft:lava ~ ~ ~ .5 1 .5 0 10 force
particle minecraft:smoke ~ ~ ~ 1 1.5 1 0 30 force

#sound
playsound minecraft:entity.magma_cube.hurt ambient @a[distance=..20] ~ ~ ~ 4 .2

#summon meteor
function dan.reap:summon/meteor

#kill meteor spell
kill @s