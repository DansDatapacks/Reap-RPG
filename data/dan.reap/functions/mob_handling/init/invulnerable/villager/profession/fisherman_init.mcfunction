# inits fisherman

#edit data
data merge entity @s {Xp:1,VillagerData:{level:1,profession:"minecraft:fisherman"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:cod",Count:3b,tag:{display:{Name:'{"text":"Raw Cod","color":"white","italic":false}',Lore:['{"text":"Common","color":"gray","italic":false}','{"text":"Food","color":"dark_gray","italic":false}']},rarity:common,reap_id:raw_cod}},sell:{id:"minecraft:gold_ingot",Count:2b,tag:{display:{Name:'{"text":"Gold Bar","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"gold_bar"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:salmon",Count:3b,tag:{display:{Name:'{"text":"Raw Salmon","color":"white","italic":false}',Lore:['{"text":"Uncommon","color":"green","italic":false}','{"text":"Food","color":"dark_gray","italic":false}']},rarity:uncommon,reap_id:raw_salmon}},sell:{id:"minecraft:emerald",Count:2b,tag:{display:{Name:'{"text":"Emerald","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:"valuable",reap_id:"emerald"}}}]}}

#required tags
tag @s add dan.villagerFisherman

#set name
execute as @s at @s run function dan.reap:mob_handling/init/invulnerable/villager/name/villager_set_name

#give init tag
tag @s add dan.initInvulnerable