# fireball effects

#cloud particle
execute if entity @s[tag=dan.spellMeteorEntity] at @s run particle minecraft:campfire_cosy_smoke ~ ~25 ~ 3 2.5 3 0 30 force

##summon meteor
#meteor summon
execute if entity @s[tag=dan.spellMeteorEntity,tag=dan.endSpell] at @s run summon minecraft:fireball ~ ~25 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],power:[0.0,-0.1,0.0],Tags:["dan.meteorEntity","dan.spellMeteorEntities","dan.initMeteorBall","dan.spellSummonedEntity","global.ignore"]}
#set damage
scoreboard players operation @e[tag=dan.initMeteorBall,sort=nearest,limit=1] dan.damage = @s[tag=dan.spellMeteorEntity] dan.damage
#remove meteor init
tag @e[tag=dan.initMeteorBall] remove dan.initMeteorBall

#set damage
scoreboard players operation @e[tag=dan.initMeteor,sort=nearest,limit=1] dan.damage = @s dan.damage
#meteor particles
execute if entity @s[type=minecraft:fireball,tag=dan.meteorEntity] at @s run particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0 20
execute if entity @s[type=minecraft:fireball,tag=dan.meteorEntity] at @s run particle minecraft:large_smoke ~ ~ ~ 0.7 0.7 0.7 0 10

#trigger meteor hitting ground
execute if entity @s[type=minecraft:fireball,tag=dan.meteorEntity] at @s unless block ~ ~-1 ~ #dan.reap:air_block run function dan.reap:item_handling/tome_handling/staff/effect/meteor_land