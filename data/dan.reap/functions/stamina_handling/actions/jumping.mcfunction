# jumping

#cooldown
scoreboard players set @s[scores={dan.jump=1..,dan.stamina=40..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan.jump=1..,dan.stamina=2..}] dan.stamina 2
scoreboard players set @s[scores={dan.jump=1..,dan.stamina=..2}] dan.stamina 0