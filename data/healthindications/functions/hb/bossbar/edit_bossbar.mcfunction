# enables bossbars (runs as Boss, can only be 4 boss bars at a time)

#locate nearby players
execute if entity @s[type=#healthindications:bossbars] at @s as @a[distance=..50] run tag @s add hbi.enabledBossbar

#init
execute if entity @s[tag=!hb.init_bb] run function healthindications:hb/bossbar/init_bossbar

#set boss ID
execute at @s if entity @p[distance=..50] run scoreboard players add #next_bossbarID hbi.bossbarID 1
execute at @s if entity @p[distance=..50] run scoreboard players operation @s hbi.bossbarID = #next_bossbarID hbi.bossbarID

#edit bossbars
execute if score @s hbi.bossbarID matches 1 at @s if entity @p[distance=..50] run function healthindications:hb/bossbar/bossbar1
execute if score @s hbi.bossbarID matches 2 at @s if entity @p[distance=..50] run function healthindications:hb/bossbar/bossbar2
execute if score @s hbi.bossbarID matches 3 at @s if entity @p[distance=..50] run function healthindications:hb/bossbar/bossbar3
execute if score @s hbi.bossbarID matches 4 at @s if entity @p[distance=..50] run function healthindications:hb/bossbar/bossbar4