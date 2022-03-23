# summon queen bee boss

#summon entity
summon minecraft:bee ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"Queen Bee"}',ActiveEffects:[{Id:14b,Amplifier:2b,Duration:2000000,ShowParticles:0b}],Invulnerable:1b,PersistenceRequired:1b,Tags:["dan.boss_queen_bee_init","dan.boss_queen_bee_AI","dan.boss_queen_bee","global.ignore"],Passengers:[{id:"minecraft:husk",CanPickUpLoot:0b,CustomNameVisible:1b,CustomName:'{"text":"Queen Bee"}',ActiveEffects:[{Id:14b,Amplifier:2b,Duration:2000000,ShowParticles:0b}],DeathLootTable:"minecraft:empty",NoAI:1b,Silent:1b,Tags:["dan.boss_queen_bee_init","dan.boss_queen_bee_hitbox","dan.boss_queen_bee","dan.hb_valid","global.custom_mob"],PersistenceRequired:1b,Health:125f,Attributes:[{Name:generic.max_health,Base:125}]},{id:"minecraft:armor_stand",CustomName:'{"text":"Queen Bee"}',CustomNameVisible:1b,Invulnerable:1b,Invisible:1b,Tags:["dan.boss_queen_bee_init","dan.boss_queen_bee","dan.boss_queen_bee_model","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150001000}}]}]}

#init ID
execute as @e[type=minecraft:husk,tag=dan.boss_queen_bee_init] run function dan.main:utility/init_id

#sync bee and model
tag @e[type=!minecraft:husk,tag=dan.boss_queen_bee_init] add dan.init_syncID
execute as @e[type=minecraft:husk,tag=dan.boss_queen_bee_init] run function dan.main:utility/sync_id

#remove init tag
tag @e[tag=dan.boss_queen_bee_init] remove dan.boss_queen_bee_init