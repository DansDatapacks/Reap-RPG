# cloud in a bottle - allows double jump

#init double jump
execute if score @s dan.jump matches 1.. run tag @s add dan.double_jump

#place block for them to jump off
#execute if entity @s[tag=dan.double_jump] at @s if block ~ ~-0.99 ~ air run summon minecraft:shulker ~ ~-1 ~ {Tags:["dan.double_jump_entity","dan.double_jump_entity_init","global.ignore"],CustomName:"\"Double Jump Entity\"",Invulnerable:1b,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],Silent:1b,NoAI:1b,Color:15b,CustomNameVisible:0b}
execute if entity @s[tag=dan.double_jump] at @s if block ~ ~-0.59 ~ air run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["dan.double_jump_entity","dan.double_jump_entity_init","global.ignore"],Passengers:[{id:"minecraft:shulker",Tags:["dan.double_jump_entity","dan.double_jump_entity_init","global.ignore"],Invulnerable:1b,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],Silent:1b,NoAI:1b,Color:15b}],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#init double jump entity remove timer
#data modify entity @e[type=minecraft:shulker,tag=dan.double_jump_entity_init,limit=1] Motion merge from entity @s
execute at @s as @e[tag=dan.double_jump_entity_init,limit=2] run scoreboard players set @s dan.timer 6

#end double jump init
execute at @s run tag @e[tag=dan.double_jump_entity_init] remove dan.double_jump_entity_init
execute if entity @s[tag=dan.double_jump] at @s if block ~ ~-0.99 ~ air run tag @s remove dan.double_jump