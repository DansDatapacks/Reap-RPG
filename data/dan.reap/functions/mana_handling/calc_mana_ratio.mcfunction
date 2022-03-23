# calculate @s's mana ratio

#dont let mana go higher than the Max or lower than 0
execute if score @s dan.mana > @s dan.manaM run scoreboard players operation @s dan.mana = @s dan.manaM
execute unless score @s dan.mana matches 0.. run scoreboard players set @s dan.mana 0

# #sets temp variable to @s's max mana
# scoreboard players operation @s dan.temp = @s dan.manaM
# #divides temp / 100
# scoreboard players operation @s dan.temp /= #100 dan.data
# #priming dan.manaP by setting it to @s's current mana first
# scoreboard players operation @s dan.manaP = @s dan.mana
# #sets dan.manaP to (current mana / (@'s max mana / 100))
# scoreboard players operation @s dan.manaP /= @s dan.temp

#get current Mana score
scoreboard players operation @s dan.manaP = @s dan.mana
#multiply current Mana by 100
scoreboard players operation @s dan.manaP *= #100 dan.data
#sets manaP to (your current Mana*100) / (your current Max Mana) - gets % of max mana
scoreboard players operation @s dan.manaP /= @s dan.manaM