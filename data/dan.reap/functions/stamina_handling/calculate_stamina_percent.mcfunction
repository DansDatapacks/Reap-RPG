# stamina percent calculator

##calc stamina percent
#get current Stamina score
scoreboard players operation @s dan.staminaP = @s dan.stamina
#multiply current Stamina by 100
scoreboard players operation @s dan.staminaP *= #100 dan.data
#sets pStamina to (your current Stamina*100) / (your current Max Stamina) - gets % of max stamina
scoreboard players operation @s dan.staminaP /= @s dan.staminaM

##calc stamina regen
#calc regenMax
scoreboard players operation @s dan.temp = @s dan.staminaM
scoreboard players operation @s dan.temp *= #staminaRegenMax dan.data
scoreboard players operation @s dan.temp /= #100 dan.data
scoreboard players operation @s dan.staminaRM = @s dan.temp
#set regen = to regenMax
execute unless score @s dan.staminaR = @s dan.staminaRM run scoreboard players operation @s dan.staminaR = @s dan.staminaRM
#calc slower regen
execute as @s[tag=dan.stamina_slowRecover] run scoreboard players operation @s dan.staminaR /= #2 dan.data
#default
execute unless score @s dan.staminaR matches 2.. run scoreboard players set @s dan.staminaR 2