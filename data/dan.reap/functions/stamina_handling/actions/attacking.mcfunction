# attacking

#cooldown
scoreboard players set @s[scores={dan.attack=1..,dan.stamina=60..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan.attack=1..,dan.stamina=30..}] dan.stamina 30
scoreboard players set @s[scores={dan.attack=1..,dan.stamina=..30}] dan.stamina 0