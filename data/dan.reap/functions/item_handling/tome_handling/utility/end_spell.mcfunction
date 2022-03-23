# end spell

#get current gametime
execute store result score #currentGametime dan.timer run time query gametime

#end spell tag
execute as @e[type=item,tag=dan.spellEntity] if score @s dan.timer = #currentGametime dan.timer run tag @s add dan.endSpell

#end summoned spell entity tag
execute as @e[type=area_effect_cloud,tag=dan.spellSummonedEntity] if score @s dan.timer = #currentGametime dan.timer run tag @s add dan.endSpell