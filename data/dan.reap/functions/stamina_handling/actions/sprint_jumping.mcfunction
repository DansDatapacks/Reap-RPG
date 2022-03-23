# sprint jumping

#cooldown
scoreboard players set @s[scores={dan.sprint=1..,dan.jump=1..,dan.stamina=40..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan.sprint=1..,dan.jump=1..,dan.stamina=40..}] dan.stamina 40
scoreboard players set @s[scores={dan.sprint=1..,dan.jump=1..,dan.stamina=..40}] dan.stamina 0