# gives ice effect (runs as effected mob)

##set damage strength
#get damage
scoreboard players operation @s dan.temp = @e[type=item,tag=dan.spellEntity,tag=dan.spellIceball,sort=nearest,limit=1] dan.damage
#divide by 3
scoreboard players operation @s dan.temp /= #3 dan.data
#set score
execute unless score @s dan.tome_dmgIce > @s dan.temp run scoreboard players operation @s dan.tome_dmgIce = @s dan.temp
#reset temp
scoreboard players reset @s dan.temp

#set timer
scoreboard players set @s dan.tome_effIce 120
tag @s add dan.tomeEff