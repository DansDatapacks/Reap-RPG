# neutral init

#set mob
function dan.reap:mob_handling/init/set_mob

#change custom mob data based on rarity
##common
#cow
execute as @s[type=minecraft:cow] if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/cow_common"}
#pig
execute as @s[type=minecraft:pig] if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/pig_common"}
#sheep
execute as @s[type=minecraft:sheep] if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/sheep_common"}
#chicken
execute as @s[type=minecraft:chicken] if score @s dan.rarity matches 1 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/chicken_common"}
##uncommon
#cow
execute as @s[type=minecraft:cow] if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/cow_uncommon"}
#pig
execute as @s[type=minecraft:pig] if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/pig_uncommon"}
#sheep
execute as @s[type=minecraft:sheep] if score @s dan.rarity matches 2 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/sheep_uncommon"}
##rare
#cow
execute as @s[type=minecraft:cow] if score @s dan.rarity matches 3 run data merge entity @s {DeathLootTable:"dan.reap:mob_loot/cow_rare"}

#init tag
tag @s add dan.initNeutral

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Neutral Mob Initialized","color":"gray"}]