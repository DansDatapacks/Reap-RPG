# initializes spell in front of player (execute as and at player)

#rotate to player
data modify entity @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] Rotation set from entity @a[sort=nearest,limit=1] Rotation

#set spell timer
execute store result score @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] dan.timer run time query gametime
scoreboard players operation @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] dan.timer += #120 dan.data
schedule function dan.reap:item_handling/tome_handling/utility/end_spell 120t

#set spell damage (determined from held tome item)
execute if entity @s[tag=dan.useTomeLeft] store result score @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] dan.damage run data get entity @s Inventory[{Slot:-106b}].tag.damage_strength
execute if entity @s[tag=dan.useTomeRight] store result score @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] dan.damage run data get entity @s SelectedItem.tag.damage_strength

#launch spell
execute as @e[type=item,tag=dan.spellEntity,tag=dan.initSpell,sort=nearest,limit=1] at @s run function math:launch

#remove init tag
tag @e[tag=dan.initSpell] remove dan.initSpell