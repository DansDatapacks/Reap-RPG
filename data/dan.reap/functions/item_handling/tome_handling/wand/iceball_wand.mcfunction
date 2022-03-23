# ice ball wand

#sound
execute at @s run playsound entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 1 1

#summon iceball spell entity
execute at @s positioned ^ ^ ^1 run summon item ~ ~1.7 ~ {Item:{id:"barrier",Count:1b},PickupDelay:32767,Tags:["dan.spellEntity","dan.spellIceball","dan.initSpell","math.launched","math.high_gravity","global.ignore"]}

#set spell damage
#execute if entity @s[tag=] as @e[type=item,tag=dan.spellEntity,tag=dan.initSpellIceball,sort=nearest,limit=1] store result score @s dan.damage run data get entity @s {SelectedItem:{}}

#init spell entity
execute at @s run function dan.reap:item_handling/tome_handling/utility/init_spell

#add used tag
tag @s add dan.useTome