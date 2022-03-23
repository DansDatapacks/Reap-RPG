# run dark mana spawner

#particles
execute at @s run particle minecraft:block minecraft:purple_stained_glass ~ ~ ~ .1 0 .1 0.3 20

#death sound
execute at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 .2 1

#give nearby players mana
# execute at @s run scoreboard players add @a[distance=..5] dan.mana 5
# execute at @s as @a[distance=..5] at @s run particle minecraft:witch ~ ~0.3 ~ .3 .5 .3 0 15 force