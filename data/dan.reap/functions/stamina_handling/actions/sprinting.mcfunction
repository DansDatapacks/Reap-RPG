# sprinting

#cooldown
scoreboard players set @s[scores={dan.sprint=1..,dan.stamina=2..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan.sprint=1..,dan.stamina=2..}] dan.stamina 2
scoreboard players set @s[scores={dan.sprint=1..,dan.stamina=..2}] dan.stamina 0

#stamina effect
tag @s[scores={dan.staminaP=0..33}] add dan.stamina_hinderSprint