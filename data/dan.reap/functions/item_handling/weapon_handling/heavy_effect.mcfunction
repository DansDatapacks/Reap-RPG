# they're carry a two handed weapon

#title options
title @s times 0 100 0

#execute warning
title @s subtitle [{"text":"this weapon requires both hands","color":"red"}]
title @s title {"text":""}

#effects
effect give @s minecraft:slowness 2 6 true
effect give @s minecraft:mining_fatigue 2 255 true

#tag
tag @s add dan.tooHeavy