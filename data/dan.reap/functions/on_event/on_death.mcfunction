# runs on death

#reset health
effect give @s minecraft:instant_health 1 100

#reset stamina
scoreboard players operation @s dan.stamina = @p dan.staminaM
scoreboard players set @s dan.staminaP 100

#remove stamina hinderance tags
tag @s remove dan.stamina_slowRecover
tag @s remove dan.stamina_hinderJump
tag @s remove dan.stamina_hinderSprint
tag @s remove dan.stamina_hinderAttack
tag @s remove dan.stamina_cooldownTiredSound