# hostile init

#baby check
execute if entity @s[nbt={IsBaby:1b}] run function dan.reap:utility/kill_entity

#set mob
function dan.reap:mob_handling/init/set_mob

##general changes
#remove bows
execute as @s if predicate dan.reap:bow/holding_bow run replaceitem entity @s weapon air
#remove banners
execute as @s[type=minecraft:pillager] if predicate dan.reap:head/banner_on_head run replaceitem entity @s armor.head air

##change custom data based on rarity
#common
execute if score @s dan.rarity matches 1 unless entity @s[type=#dan.reap:has_hands_ignore] run replaceitem entity @s weapon air
execute if score @s dan.rarity matches 1 run loot replace entity @s[type=#dan.reap:has_hands] weapon.mainhand loot dan.reap:mob_held/common_mainhand
#uncommon
execute if score @s dan.rarity matches 2 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.mainhand loot dan.reap:mob_held/uncommon_mainhand
execute if score @s dan.rarity matches 2 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.offhand loot dan.reap:mob_held/uncommon_offhand
#rare
execute if score @s dan.rarity matches 3 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.mainhand loot dan.reap:mob_held/rare_mainhand
execute if score @s dan.rarity matches 3 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.offhand loot dan.reap:mob_held/rare_offhand
#fabled
execute if score @s dan.rarity matches 4 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.mainhand loot dan.reap:mob_held/fabled_mainhand
execute if score @s dan.rarity matches 4 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.offhand loot dan.reap:mob_held/fabled_offhand
#mythical
execute if score @s dan.rarity matches 5 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.mainhand loot dan.reap:mob_held/mythical_mainhand
execute if score @s dan.rarity matches 5 as @s[type=#dan.reap:has_hands] run loot replace entity @s weapon.offhand loot dan.reap:mob_held/mythical_offhand

#init tag
tag @s add dan.initHostile

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Hostile Mob Initialized","color":"gray"}]