# Calculate health modifier
function math:health/calculate/health_modifier

# Death (may redirect to another function to simulate death)
execute if score @s math.temp >= #maximum_health math.temp run kill

# New health
execute if score @s math.temp < #maximum_health math.temp run function math:health/health/decide

# Reset score
scoreboard players reset @s math.temp