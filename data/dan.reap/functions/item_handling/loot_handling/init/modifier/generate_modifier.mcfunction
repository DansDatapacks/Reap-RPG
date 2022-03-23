# generate random modifier (per item type)

#temp tag
tag @s add dan.itemModifier

#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector","global.ignore"]}
execute as @e[tag=dan.air_detector] at @s run function dan.main:utility/find_air

#set sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:acacia_sign

#good or bad modifier chance
scoreboard players set #RNG rand.min 1
scoreboard players set #RNG rand.max 3
function math:random

#bad modifier
execute if score #RNG rand.num matches 1 run scoreboard players set #BadModifier dan.temp 1

##detect item type
#melee weapon
execute if data entity @s {Item:{tag:{item_type:"melee_weapon"}}} run function dan.reap:item_handling/loot_handling/init/modifier/gear/melee
#magic weapon
execute if data entity @s {Item:{tag:{item_type:"magic_weapon"}}} run function dan.reap:item_handling/loot_handling/init/modifier/gear/magic
#ranged weapon
execute if data entity @s {Item:{tag:{item_type:"ranged_weapon"}}} run function dan.reap:item_handling/loot_handling/init/modifier/gear/ranged
#artifact
execute if data entity @s {Item:{tag:{item_type:"artifact"}}} run function dan.reap:item_handling/loot_handling/init/modifier/gear/artifact
#armor
execute if data entity @s {Item:{tag:{item_type:"armor"}}} run function dan.reap:item_handling/loot_handling/init/modifier/gear/armor

#give modifier
execute if score #Modifier dan.temp matches 1 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Hard ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 1 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:4,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]}]

execute if score #Modifier dan.temp matches 2 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Guarding ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 2 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:5,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:2,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]}]

execute if score #Modifier dan.temp matches 4 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Warding ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 4 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:3,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 5 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Precise ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 5 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 6 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Lucky ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 6 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:5,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 7 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Jagged ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 7 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-0.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 8 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Spiked ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 8 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 9 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Menacing ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 9 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:1,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.4,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]}]

execute if score #Modifier dan.temp matches 10 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Brisk ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 10 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]}]

execute if score #Modifier dan.temp matches 11 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Fleeting ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 11 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 12 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Hasty ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 12 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.8,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 13 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Quick ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 13 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.4,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]}]

execute if score #Modifier dan.temp matches 14 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Wild ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 14 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 15 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Rash ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 15 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-5,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 16 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Intrepid ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 16 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:3,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:3,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 17 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Violent ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 17 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.1,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:0.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 18 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Arcane ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 18 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:6,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 19 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Impenetrable ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 19 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:6,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:4,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:8,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 20 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Heroic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 20 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:10,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:6,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:4,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:0.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 21 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Keen ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 21 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 22 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Superior ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 22 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:1,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 23 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Forceful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 23 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 24 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Broken ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 24 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-1,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 25 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Damaged ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 25 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 26 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Shoddy ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 26 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 27 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Hurtful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 27 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-4,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:-4,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]}]

execute if score #Modifier dan.temp matches 28 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Strong ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 28 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:4,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:6,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:6,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 29 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Unpleasant ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 29 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-1,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 30 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Weak ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 30 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.8,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 31 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Ruthless ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 31 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 32 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Godly ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 32 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:10,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 33 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Demonic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 33 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:5,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.4,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 34 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Zealous ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 34 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 35 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Reinforced ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 35 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:4,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:10,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:8,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.4,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 36 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Weightless ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 36 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}] 

execute if score #Modifier dan.temp matches 37 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Tough ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 37 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:6,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:10,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 38 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Deadly ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 38 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 39 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Agile ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 39 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 40 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Nimble ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 40 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]}]

execute if score #Modifier dan.temp matches 41 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Murderous ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 41 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 42 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Slow ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 42 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 43 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Sluggish ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 43 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.5,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 44 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Lazy ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 44 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:-0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 45 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Annoying ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 45 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 46 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Nasty ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 46 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-10,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 47 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Large ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 47 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 48 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Massive ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 48 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 49 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Dangerous ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 49 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:-10,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 50 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Savage ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 50 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 51 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Sharp ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 51 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 52 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Pointy ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 52 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-1,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 53 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Tiny ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 53 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.7,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:3,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 54 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Terrible ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 54 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-1,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 55 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Small ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 55 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.6,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-0.6,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 56 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Dull ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 56 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.5,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 57 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Unhappy ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 57 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:-0.1,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 58 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Bulky ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 58 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 59 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Shameful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 59 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 60 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Heavy ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 60 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 61 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Light ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 61 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:-0.5,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 62 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Legendary ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 62 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:8,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 63 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Sighted ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 63 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 64 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Rapid ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 64 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.1,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 65 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Intimidating ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 65 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:2,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:5,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]}]

execute if score #Modifier dan.temp matches 66 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Staunch ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 66 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:5,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:5,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:5,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]}]

execute if score #Modifier dan.temp matches 67 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Awful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 67 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.7,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 68 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Lethargic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 68 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.5,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 69 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Awkward ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 69 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:-0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:-0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]}]

execute if score #Modifier dan.temp matches 70 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Powerful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 70 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:5,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 71 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Frenzying ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 71 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 72 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Unreal ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 72 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:5,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:8,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:1,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 73 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Mystic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 73 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:8,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 74 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Adept ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 74 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:2,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.1,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 75 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Masterful ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 75 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.3,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.3,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 76 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Inept ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 76 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-8,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:-0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 77 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Ignorant ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 77 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-15,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:-15,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:-1,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-5,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 78 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Deranged ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 78 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:-10,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.armor",Name:"modifier_armor",Amount:-10,Operation:0,UUID:[I;267966910,-263172195,-1175159469,-1998620399]},{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:-10,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.4,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 79 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Intense ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 79 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 80 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Taboo ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 80 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.2,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-10,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 81 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Celestial ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 81 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:6,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.2,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:1.1,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]}]

execute if score #Modifier dan.temp matches 82 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Furious ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 82 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.armor_toughness",Name:"modifier_armor_toughness",Amount:10,Operation:0,UUID:[I;-23091532,-844087162,-1604220374,1996591766]},{AttributeName:"minecraft:generic.knockback_resistance",Name:"modifier_knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1410420485,1536704977,-1334108433,448127800]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]}]

execute if score #Modifier dan.temp matches 83 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Manic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 83 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.5,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_damage",Name:"modifier_attack_damage",Amount:-0.8,Operation:2,UUID:[I;-1107375012,2044411932,-2147339848,1933611286]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:2,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:-3,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 84 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Enlightened ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 84 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:4,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.3,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 85 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Divine ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 85 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:6,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:1,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 86 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Angelic ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 86 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.movement_speed",Name:"modifier_movement_speed",Amount:0.2,Operation:2,UUID:[I;1212908479,-1395112589,-1523811880,627665293]},{AttributeName:"minecraft:generic.attack_speed",Name:"modifier_attack_speed",Amount:1.5,Operation:0,UUID:[I;-1036257609,413748254,-1520223632,885615884]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

execute if score #Modifier dan.temp matches 87 at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '{"text":"Blessed ","color":"white","italic":false}'
execute if score #Modifier dan.temp matches 87 run data modify storage dan.reap attribute_list set value [{AttributeName:"minecraft:generic.max_health",Name:"modifier_max_health",Amount:6,Operation:0,UUID:[I;784670761,-1778103367,-1539351911,199203983]},{AttributeName:"minecraft:generic.luck",Name:"modifier_luck",Amount:2,Operation:0,UUID:[I;148449385,478036178,-1570996256,-1208819957]}]

#apply modifier
data modify entity @s Item.tag.AttributeModifiers append from storage dan.reap attribute_list[]

#combine name with modifier
execute at @e[tag=dan.air_detector] run data modify block ~ ~-1 ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"nbt":"Item.tag.display.Name","entity":"@e[type=minecraft:item,tag=dan.itemModifier,limit=1]","interpret":"true"}]'

#set item name
execute at @e[tag=dan.air_detector] run data modify entity @s Item.tag.display.Name set from block ~ ~-1 ~ Text1

#reset
scoreboard players reset #Modifier dan.temp
scoreboard players reset #BadModifier dan.temp

#end air detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ air
kill @e[tag=dan.air_detector]

#remove temp tag
tag @s remove dan.itemModifier