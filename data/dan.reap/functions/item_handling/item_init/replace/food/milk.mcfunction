# milk

#drop item
execute unless score #replace_item dan.temp matches 1 run loot spawn ~ ~ ~ loot dan.reap:food/milk

#replace item
execute if score #replace_item dan.temp matches 1 run loot spawn ~ ~ ~ loot dan.reap:food/milk