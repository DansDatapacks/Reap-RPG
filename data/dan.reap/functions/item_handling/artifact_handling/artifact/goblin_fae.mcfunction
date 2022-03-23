# goblin fae - automatically trades in currencies for higher value

#get gold coin amount
execute store result score #CoinAmount dan.temp run clear @s minecraft:sunflower{reap_id:"gold_coin"} 0
#get stacks amount
scoreboard players operation #CoinStacks dan.temp = #CoinAmount dan.temp
scoreboard players operation #CoinStacks dan.temp /= #64 dan.data
#set loops
execute if score #CoinStacks dan.temp matches 1.. run scoreboard players operation #loop dan.temp = #CoinStacks dan.temp
#give gold bars
execute if score #CoinStacks dan.temp matches 1.. run function give:replace/gold_coin_to_gold_bar

#get gold bar amount
execute store result score #CoinAmount dan.temp run clear @s minecraft:gold_ingot{reap_id:"gold_bar"} 0
#get stacks amount
scoreboard players operation #CoinStacks dan.temp = #CoinAmount dan.temp
scoreboard players operation #CoinStacks dan.temp /= #8 dan.data
#set loops
execute if score #CoinStacks dan.temp matches 1.. run scoreboard players operation #loop dan.temp = #CoinStacks dan.temp
#give emeralds
execute if score #CoinStacks dan.temp matches 1.. run function give:replace/gold_bar_to_emerald

#get emerald amount
execute store result score #CoinAmount dan.temp run clear @s minecraft:emerald{reap_id:"emerald"} 0
#get stacks amount
scoreboard players operation #CoinStacks dan.temp = #CoinAmount dan.temp
scoreboard players operation #CoinStacks dan.temp /= #8 dan.data
#set loops
execute if score #CoinStacks dan.temp matches 1.. run scoreboard players operation #loop dan.temp = #CoinStacks dan.temp
#give emeralds
execute if score #CoinStacks dan.temp matches 1.. run function give:replace/emerald_to_sapphire

#get sapphire amount
execute store result score #CoinAmount dan.temp run clear @s minecraft:gold_ingot{reap_id:"sapphire"} 0
#get stacks amount
scoreboard players operation #CoinStacks dan.temp = #CoinAmount dan.temp
scoreboard players operation #CoinStacks dan.temp /= #8 dan.data
#set loops
execute if score #CoinStacks dan.temp matches 1.. run scoreboard players operation #loop dan.temp = #CoinStacks dan.temp
#give emeralds
execute if score #CoinStacks dan.temp matches 1.. run function give:replace/sapphire_to_rose_quartz

#get rose quartz amount
execute store result score #CoinAmount dan.temp run clear @s minecraft:quartz{reap_id:"rose_quartz"} 0
#get stacks amount
scoreboard players operation #CoinStacks dan.temp = #CoinAmount dan.temp
scoreboard players operation #CoinStacks dan.temp /= #8 dan.data
#set loops
execute if score #CoinStacks dan.temp matches 1.. run scoreboard players operation #loop dan.temp = #CoinStacks dan.temp
#give emeralds
execute if score #CoinStacks dan.temp matches 1.. run function give:replace/rose_quartz_to_ruby