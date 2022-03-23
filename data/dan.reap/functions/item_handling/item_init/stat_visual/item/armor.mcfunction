# item stats

#armor
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_armor"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_armor"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE014","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#health
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_max_health"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_max_health"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE010","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#armor toughness
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_armor_toughness"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_armor_toughness"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE015","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#movement speed
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_movement_speed"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_movement_speed"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE019","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#knockback resistance
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_knockback_resistance"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_knockback_resistance"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE016","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#attack damage
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_attack_damage"}].Amount 10
execute store result score #InputModifierMultiply dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_attack_damage"}].Amount 10
function dan.reap:item_handling/item_init/stat_format_attack
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE013","color":"white","italic":"false"},{"text":"x","color":"dark_gray","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#attack speed
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_attack_speed"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_attack_speed"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE012","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1

#luck
execute store result score #Input dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"base_luck"}].Amount 10
execute store result score #InputModifier dan.temp run data get entity @s Item.tag.AttributeModifiers[{Name:"modifier_luck"}].Amount 10
function dan.reap:item_handling/item_init/stat_format
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"text":"\\uE017","color":"white","italic":"false"},{"score":{"name":"#Output","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"},{"text":".","color":"dark_gray","italic":"false"},{"score":{"name":"#OutputDecimal","objective":"dan.temp"},"interpret":"true","color":"dark_gray","italic":"false"}]'
execute if entity @s[tag=dan.reap_markStat] at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Lore append from block ~ ~-1 ~ Text1