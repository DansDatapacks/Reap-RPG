# Store set value
scoreboard players operation #value math.temp = @s math.temp

# Maximum Health
execute store result score #maximum_health math.temp run attribute @s minecraft:generic.max_health get

# Current Health
execute store result score #current_health math.temp run data get entity @s Health

# Add health difference (+ Maximum Health - Current Health)
scoreboard players operation @s math.temp += #maximum_health math.temp
scoreboard players operation @s math.temp -= #current_health math.temp
