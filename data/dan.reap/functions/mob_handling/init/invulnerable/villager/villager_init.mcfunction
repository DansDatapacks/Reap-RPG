#init villager

##set name
execute as @s at @s run function dan.reap:mob_handling/init/invulnerable/villager/name/villager_generate_name

##base data
data merge entity @s {Invulnerable:1b,CustomNameVisible:1b}

##randomize profession
#set min and max
scoreboard players set @s rand.min 1
scoreboard players set @s rand.max 1000

#returns randomized number between rand.min and rand.max as rand.num
execute as @s run function math:random

##set randomized profession
#nitwit (no profession)
execute if score @s rand.num matches 1..599 run data merge entity @s {Xp:1,VillagerData:{level:1,profession:"minecraft:nitwit"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:sunflower",Count:64b,tag:{display:{Name:'{"text":"Gold Coin","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_coin"}},sell:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Bar","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_bar"}}},{rewardExp:0b,maxUses:2147483647,sell:{id:"minecraft:sunflower",Count:64b,tag:{display:{Name:'{"text":"Gold Coin","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_coin"}},buy:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Bar","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_bar"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:gold_ingot",Count:8b,tag:{display:{Name:'{"text":"Gold Bar","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_bar"}},sell:{id:"minecraft:emerald",Count:1b,tag:{display:{Name:'{"text":"Emerald","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"emerald"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:1b,tag:{display:{Name:'{"text":"Emerald","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"emerald"}},sell:{id:"minecraft:gold_ingot",Count:8b,tag:{display:{Name:'{"text":"Gold Bar","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_bar"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:8b,tag:{display:{Name:'{"text":"Emerald","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"emerald"}},sell:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Sapphire","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150002,rarity:"valuable",reap_id:"sapphire"}}},{rewardExp:0b,maxUses:2147483647,sell:{id:"minecraft:emerald",Count:8b,tag:{display:{Name:'{"text":"Emerald","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"emerald"}},buy:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Sapphire","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150002,rarity:"valuable",reap_id:"sapphire"}}},{rewardExp:0b,maxUses:2147483647,sell:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Rose Quartz","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150001,rarity:"valuable",reap_id:"rose_quartz"}},buy:{id:"minecraft:gold_ingot",Count:8b,tag:{display:{Name:'{"text":"Sapphire","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150002,rarity:"valuable",reap_id:"sapphire"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Rose Quartz","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150001,rarity:"valuable",reap_id:"rose_quartz"}},sell:{id:"minecraft:gold_ingot",Count:8b,tag:{display:{Name:'{"text":"Sapphire","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},CustomModelData:4150002,rarity:"valuable",reap_id:"sapphire"}}}]}}
execute if score @s rand.num matches 1..599 run tag @s add dan.villagerNitwit

#fisherman
execute if score @s rand.num matches 600..849 run function dan.reap:mob_handling/init/invulnerable/villager/profession/fisherman_init

#cleric
execute if score @s rand.num matches 850..949 run function dan.reap:mob_handling/init/invulnerable/villager/profession/cleric_init

#dungeoneer
execute if score @s rand.num matches 950..1000 run function dan.reap:mob_handling/init/invulnerable/villager/profession/dungeoneer_init

#give init tag
tag @s add dan.initInvulnerable