# remove heavy effect

#reset title
title @s subtitle [{"text":""}]
title @s title {"text":""}

#effects
effect clear @s minecraft:slowness
effect clear @s minecraft:mining_fatigue

#remove tag
tag @s remove dan.tooHeavy