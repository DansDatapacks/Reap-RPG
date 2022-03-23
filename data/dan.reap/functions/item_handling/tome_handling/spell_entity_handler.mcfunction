# spell handler

execute if entity @s[type=area_effect_cloud,tag=dan.spellTornadoEntity] run function dan.reap:item_handling/tome_handling/wand/effect/tornado_handle
execute if entity @s[type=area_effect_cloud,tag=dan.spellPoisonCloudEntity] run function dan.reap:item_handling/tome_handling/wand/effect/poison_cloud_handle
execute if entity @s[tag=dan.spellMeteorEntities] run function dan.reap:item_handling/tome_handling/staff/effect/meteor_handle