# inits cleric

#edit data
data merge entity @s {Xp:1,VillagerData:{level:1,profession:"minecraft:cleric"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:sunflower",Count:16b,tag:{display:{Name:'{"text":"Gold Coin","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:valuable,reap_id:gold_coin}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Healing Vial","color":"white","italic":false}',Lore:['{"text":"Common","color":"gray","italic":false}','{"text":"Heals a small amount of Health","color":"dark_gray","italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:6b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:1b,Duration:60,ShowParticles:1b}],Potion:"minecraft:thick",CustomPotionColor:16058984,CustomModelData:4150001,rarity:"common",reap_id:"healing_vial"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:sunflower",Count:32b,tag:{display:{Name:'{"text":"Gold Coin","color":"white","italic":false}',Lore:['{"text":"Valuable","color":"yellow","italic":false}']},rarity:valuable,reap_id:gold_coin}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Mana Vial","color":"white","italic":false}',Lore:['{"text":"Common","color":"gray","italic":false}','{"text":"Gives a small amount of Mana","color":"dark_gray","italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:6b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:1b,Duration:60,ShowParticles:1b}],Potion:"minecraft:thick",CustomPotionColor:10036395,CustomModelData:4150001,rarity:"common",reap_id:"mana_vial"}}}]}}

#reset timer score
scoreboard players set @s dan.timer 0

#required tags
tag @s add dan.villagerCleric
tag @s add dan.resetableMob

#set name
execute as @s at @s run function dan.reap:mob_handling/init/invulnerable/villager/name/villager_set_name

#give init tag
tag @s add dan.initInvulnerable