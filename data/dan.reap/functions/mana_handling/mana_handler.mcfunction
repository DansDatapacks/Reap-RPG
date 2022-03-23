# mana handler

#creative mode bypass
execute as @a[gamemode=creative] run scoreboard players operation @s dan.mana = @s dan.manaM

#update mana ratio
execute as @a run function dan.reap:mana_handling/calc_mana_ratio

#regen mana (if at max stamina)
execute as @a unless score @s dan.mana = @s dan.manaM if score @s dan.stamina = @s dan.staminaM if score #ManaRegenTimer dan.timer matches 0 run scoreboard players add @s dan.mana 1

#reset mana regen timer
execute unless score #ManaRegenTimer dan.timer matches 1.. run scoreboard players set #ManaRegenTimer dan.timer 2
execute if score #ManaRegenTimer dan.timer matches 1.. run scoreboard players remove #ManaRegenTimer dan.timer 1