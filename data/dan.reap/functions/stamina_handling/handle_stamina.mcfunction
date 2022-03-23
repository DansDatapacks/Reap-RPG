# stamina handler - handles order of functions for stamina actions and stamina score

#stamina regen cooldown
scoreboard players remove @a[scores={dan.staminaC=1..}] dan.staminaC 1

#slowRecover tag handling
tag @a[scores={dan.staminaP=..10}] add dan.stamina_slowRecover
tag @a[tag=dan.stamina_slowRecover,scores={dan.staminaP=45..}] remove dan.stamina_slowRecover

#stamina regeneration
execute as @a[scores={dan.staminaC=0,dan.staminaP=..99}] run scoreboard players operation @s dan.stamina += @s dan.staminaR

#stamina max (makes sure player's max stamina is the same as the global variable)
execute as @a unless score @s dan.staminaM = #staminaMax dan.data run scoreboard players operation @s dan.staminaM = #staminaMax dan.data

#stamina cap (sets your stamina to your max stamina if it is over it)
execute as @a run execute if score @s dan.stamina > @s dan.staminaM run scoreboard players operation @s dan.stamina = @s dan.staminaM
execute as @a run execute if score @s dan.stamina = @s dan.staminaM run scoreboard players set @s dan.staminaP 100

#action detect
execute as @a[tag=!dan.gamemodeAdmin] run function dan.reap:stamina_handling/handle_actions

#low-stamina effect handling
execute as @a[tag=!dan.gamemodeAdmin] unless score @s dan.stamina = @s dan.staminaM run function dan.reap:stamina_handling/handle_stamina_effects

#climbing handler
execute as @a[tag=!dan.gamemodeAdmin,tag=dan.climbing] unless score @s dan.climb matches 1.. run function dan.reap:stamina_handling/actions/climbing_handler/end_climb
execute as @a[tag=!dan.gamemodeAdmin,scores={dan.climb=1..}] run function dan.reap:stamina_handling/actions/climbing_handler/climbing_handler

#proning handler
#execute as @a[tag=dan_prone] run function dan.reap:stamina_handling/actions/prone
#execute as @e[tag=dan_prone_block] run function dan.reap:stamina_handling/actions/prone_handler/prone_handler
#tag @a[tag=dan_prone,scores={dan.sneak=0}] remove dan_prone