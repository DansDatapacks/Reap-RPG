# handles player's stamina percent

#percent stamina update (if your stamina isnt at max)
execute as @a[gamemode=creative] run scoreboard players operation @s dan.stamina = @s dan.staminaM
execute as @a unless score @s dan.stamina = @s dan.staminaM run function dan.reap:stamina_handling/calculate_stamina_percent
execute as @a if score @s dan.stamina = @s dan.staminaM if score @s dan.staminaP > #100 dan.data run function dan.reap:stamina_handling/calculate_stamina_percent