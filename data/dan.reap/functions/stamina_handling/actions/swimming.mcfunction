# swimming

#cooldown
scoreboard players set @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan.swim=1..,dan.stamina=2..}] dan.staminaC 20

#stamina use
scoreboard players remove @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan.swim=1..,dan.stamina=2..}] dan.stamina 2
scoreboard players set @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan.swim=1..,dan.stamina=..2}] dan.stamina 0