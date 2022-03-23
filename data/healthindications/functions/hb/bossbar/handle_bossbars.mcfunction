# bossbars

#reset IDs
scoreboard players reset #next_bossbarID hbi.bossbarID

#edit bossbars
execute as @e[type=#healthindications:bossbars,tag=!global.ignore,tag=!hbi.no_bossbar,tag=!hbi.hide] at @s run function healthindications:hb/bossbar/edit_bossbar

#enable bossbars
function healthindications:hb/bossbar/enable_bossbar