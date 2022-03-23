# run health bar (as Damaged Mob)

#sync begin
execute as @s at @s run function healthindications:hb/utility/sync_begin

#update healthbar (summon, tp, update heath stat, etc)
execute as @s at @s run function healthindications:hb/update_healthbar

#remove validation tag
tag @s remove hbi.valid

#end sync
execute as @s run function healthindications:hb/utility/sync_end