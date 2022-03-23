# tome successfully executed

#particles
#execute at @s positioned ^-.8 ^.3 ^1 run particle flame ~ ~1.3 ~ .02 .02 .02 0 1 force
#execute at @s run particle minecraft:enchant ~ ~1 ~ .3 .3 .3 1 25 force

#drain mana/stamina
scoreboard players operation @s dan.mana -= #RequiredMana dan.temp
execute if score #RequiredMana dan.temp matches 1.. run function dan.reap:message/drain_mana
scoreboard players operation @s dan.stamina -= #RequiredStamina dan.temp
scoreboard players set @s dan.staminaC 20

#tome use cooldown
scoreboard players set @s dan.tomeC 10

##right hand
#tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:tome/holding_regeneration_tome if data entity @s {SelectedItem:{tag:{tome_type:"regeneration"}}} run function dan.reap:item_handling/tome_handling/tome/regeneration_tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:tome/holding_strength_tome if data entity @s {SelectedItem:{tag:{tome_type:"strength"}}} run function dan.reap:item_handling/tome_handling/tome/strength_tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {SelectedItem:{tag:{tome_type:"smolder"}}} run function dan.reap:item_handling/tome_handling/tome/smolder_tome
#wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:wand/holding_fireball_wand if data entity @s {SelectedItem:{tag:{tome_type:"fireball_wand"}}} run function dan.reap:item_handling/tome_handling/wand/fireball_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:wand/holding_evoker_wand if data entity @s {SelectedItem:{tag:{tome_type:"evoker_wand"}}} run function dan.reap:item_handling/tome_handling/wand/evoker_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:wand/holding_tornado_wand if data entity @s {SelectedItem:{tag:{tome_type:"tornado_wand"}}} run function dan.reap:item_handling/tome_handling/wand/tornado_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:wand/holding_iceball_wand if data entity @s {SelectedItem:{tag:{tome_type:"iceball_wand"}}} run function dan.reap:item_handling/tome_handling/wand/iceball_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:wand/holding_poison_wand if data entity @s {SelectedItem:{tag:{tome_type:"poison_wand"}}} run function dan.reap:item_handling/tome_handling/wand/poison_wand
#staff
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:staff/holding_meteor_staff if data entity @s {SelectedItem:{tag:{tome_type:"meteor_staff"}}} run function dan.reap:item_handling/tome_handling/staff/meteor_staff
#artifact
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] if predicate dan.reap:artifacts/holding_ender_ring if data entity @s {SelectedItem:{tag:{tome_type:"ender_ring"}}} run function dan.reap:item_handling/artifact_handling/artifact/ender_ring
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight] unless score @s dan.sneak matches 1.. if predicate dan.reap:artifacts/holding_ancient_waystone if data entity @s {SelectedItem:{tag:{tome_type:"ancient_waystone"}}} run function dan.reap:item_handling/artifact_handling/artifact/ancient_waystone
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeRight,scores={dan.sneak=1..}] if predicate dan.reap:artifacts/holding_ancient_waystone if data entity @s {SelectedItem:{tag:{tome_type:"ancient_waystone"}}} run function dan.reap:item_handling/artifact_handling/artifact/ancient_waystone_alt

##left hand
#tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:tome/holding_regeneration_tome if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"regeneration"}}]} run function dan.reap:item_handling/tome_handling/tome/regeneration_tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:tome/holding_strength_tome if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"strength"}}]} run function dan.reap:item_handling/tome_handling/tome/strength_tome
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:tome/holding_smolder_tome if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"smolder"}}]} run function dan.reap:item_handling/tome_handling/tome/smolder_tome
#wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:wand/holding_fireball_wand if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"fireball_wand"}}]} run function dan.reap:item_handling/tome_handling/wand/fireball_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:wand/holding_evoker_wand if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"evoker_wand"}}]} run function dan.reap:item_handling/tome_handling/wand/evoker_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:wand/holding_tornado_wand if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"tornado_wand"}}]} run function dan.reap:item_handling/tome_handling/wand/tornado_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:wand/holding_iceball_wand if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"iceball_wand"}}]} run function dan.reap:item_handling/tome_handling/wand/iceball_wand
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:wand/holding_poison_wand if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"poison_wand"}}]} run function dan.reap:item_handling/tome_handling/wand/poison_wand
#staff
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:staff/holding_meteor_staff if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"meteor_staff"}}]} run function dan.reap:item_handling/tome_handling/staff/meteor_staff
#artifact
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] if predicate dan.reap:artifacts/holding_ender_ring if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"ender_ring"}}]} run function dan.reap:item_handling/artifact_handling/artifact/ender_ring
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft] unless score @s dan.sneak matches 1.. if predicate dan.reap:artifacts/holding_ancient_waystone if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"ancient_waystone"}}]} run function dan.reap:item_handling/artifact_handling/artifact/ancient_waystone
execute as @s[tag=!dan.useTome] at @s if entity @s[tag=dan.useTomeLeft,scores={dan.sneak=1..}] if predicate dan.reap:artifacts/holding_ancient_waystone if data entity @s {Inventory:[{Slot:-106b,tag:{tome_type:"ancient_waystone"}}]} run function dan.reap:item_handling/artifact_handling/artifact/ancient_waystone_alt

#remove used tag
tag @s remove dan.useTome

#reset dan.temp
scoreboard players reset @s dan.temp