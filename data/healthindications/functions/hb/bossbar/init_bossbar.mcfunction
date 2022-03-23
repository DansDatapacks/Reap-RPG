# init bossbar

#set max health
execute unless entity @s store result score @s hbi.healthM run data get entity @s Health

#init tag
tag @s[tag=!hb.init_bb] add hb.init_bb