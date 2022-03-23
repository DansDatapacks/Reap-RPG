# executes when player is holding non-reap item

execute if data entity @s SelectedItem.id.{"minecraft:milk_bucket"}

execute unless score #replace_item dan.temp matches 1 run replaceitem entity @s weapon.mainhand air