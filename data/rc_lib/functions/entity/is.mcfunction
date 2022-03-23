tag @s add rc_lib.processed
execute unless entity @s[type=#rc_lib:special] run function rc_lib:entity/try
execute if entity @s[type=#rc_lib:special] run function rc_lib:entity/special/try