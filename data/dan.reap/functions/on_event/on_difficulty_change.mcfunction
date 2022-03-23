# runs on difficulty change

#get new difficulty
scoreboard players operation #difficulty dan.data = #difficulty dan.temp

#peaceful
execute if score #difficulty dan.data matches 0 run scoreboard players set #staminaMax dan.data 600
execute if score #difficulty dan.data matches 0 run scoreboard players set #staminaRegenMax dan.data 3

#easy
execute if score #difficulty dan.data matches 1 run scoreboard players set #staminaMax dan.data 450
execute if score #difficulty dan.data matches 1 run scoreboard players set #staminaRegenMax dan.data 2

#normal
execute if score #difficulty dan.data matches 2 run scoreboard players set #staminaMax dan.data 400
execute if score #difficulty dan.data matches 2 run scoreboard players set #staminaRegenMax dan.data 2

#hard
execute if score #difficulty dan.data matches 3 run scoreboard players set #staminaMax dan.data 300
execute if score #difficulty dan.data matches 3 run scoreboard players set #staminaRegenMax dan.data 1