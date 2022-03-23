# death detect

#loot chest
execute if entity @s[tag=dan.dd_loot_chest] at @s run function dan.reap:mob_handling/behavior/loot_chest/on_death
#dark mana
execute if entity @s[tag=dan.dd_dark_mana] at @s run function dan.reap:mob_handling/behavior/mana_crystal/dark_mana/on_death
#light mana
execute if entity @s[tag=dan.dd_light_mana] at @s run function dan.reap:mob_handling/behavior/mana_crystal/light_mana/on_death

#get rid of death_detect_aec
kill @s