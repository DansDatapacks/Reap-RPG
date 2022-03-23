# stamina effects - adds effects when low on stamina

#hinderance checks
tag @s[tag=!dan.stamina_hinderJump,scores={dan.staminaP=..10}] add dan.stamina_hinderJump
tag @s[tag=!dan.stamina_hinderAttack,scores={dan.staminaP=..10}] add dan.stamina_hinderAttack
tag @s[tag=!dan.stamina_hinderSprint,scores={dan.staminaP=..33}] add dan.stamina_hinderSprint
tag @s[tag=!dan.stamina_drown,scores={dan.stamina=0,dan.swim=1..}] add dan.stamina_drown

#remove hinderance
tag @s[tag=dan.stamina_hinderAttack,scores={dan.staminaP=11..}] remove dan.stamina_hinderAttack
tag @s[tag=dan.stamina_hinderSprint,scores={dan.staminaP=34..}] remove dan.stamina_hinderSprint
tag @s[tag=dan.stamina_hinderJump,tag=!dan.stamina_slowRecover,scores={dan.staminaP=34..}] remove dan.stamina_hinderJump
tag @s[tag=dan.stamina_hinderJump,scores={dan.staminaP=45..}] remove dan.stamina_hinderJump

#jumping
execute as @s[tag=dan.stamina_hinderJump] run function dan.reap:stamina_handling/effects/hinder_jump

#sprinting
execute as @s[tag=dan.stamina_hinderSprint] run function dan.reap:stamina_handling/effects/hinder_sprint

#attacking
execute as @s[tag=dan.stamina_hinderAttack] run function dan.reap:stamina_handling/effects/hinder_attack

#drowning (hard mode)
execute if score #difficulty dan.data matches 3 as @s[tag=dan.stamina_drown] at @s run function dan.reap:stamina_handling/effects/drown_anim
execute if score #difficulty dan.data matches 3 as @s[tag=dan.stamina_drown] at @s anchored eyes unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:air run function dan.reap:stamina_handling/effects/drown

#sound and cooldown handling
tag @s[scores={dan.staminaP=34..},tag=dan.stamina_cooldownTiredSound] remove dan.stamina_cooldownTiredSound
execute as @s[scores={dan.staminaP=..33},tag=!dan.stamina_cooldownTiredSound] run function dan.reap:stamina_handling/sounds/cooldown_tired_sound
tag @s[scores={dan.stamina=1..},tag=dan_cooldownExasterbatedSound] remove dan_cooldownExasterbatedSound
execute as @s[scores={dan.stamina=0},tag=!dan_cooldownExasterbatedSound] run function dan.reap:stamina_handling/sounds/cooldown_exasterbated_sound