# formats stats with decimal

#init attack
scoreboard players operation #Input dan.temp += #10 dan.data

#modifier
execute unless score #InputModifierMultiply dan.temp matches 0 run scoreboard players operation #InputModifierMultiply dan.temp *= #Input dan.temp
execute unless score #InputModifierMultiply dan.temp matches 0 run scoreboard players operation #InputModifierMultiply dan.temp /= #10 dan.data
execute unless score #InputModifierMultiply dan.temp matches 0 run scoreboard players operation #Input dan.temp += #InputModifierMultiply dan.temp

#reset mark
tag @s remove dan.reap_markStat

#mark stat
execute unless score #Input dan.temp matches 10 run tag @s add dan.reap_markStat

#reset scores
scoreboard players set #InputModifierMultiply dan.temp 0
scoreboard players reset #Output dan.temp
scoreboard players reset #OutputDecimal dan.temp

#output
scoreboard players operation #Output dan.temp = #Input dan.temp
scoreboard players operation #Output dan.temp /= #10 dan.data

#output decimal place
scoreboard players operation #OutputDecimal dan.temp = #Input dan.temp
scoreboard players operation #OutputDecimal dan.temp %= #10 dan.data