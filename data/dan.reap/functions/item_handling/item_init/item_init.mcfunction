# item init

#items
execute if data entity @s {Item:{id:"minecraft:flint"}} at @s run function dan.reap:item_handling/item_init/replace/item/flint
execute if data entity @s {Item:{id:"minecraft:stick"}} at @s run function dan.reap:item_handling/item_init/replace/item/stick

#ingredients
execute if data entity @s {Item:{id:"minecraft:egg"}} at @s run function dan.reap:item_handling/item_init/replace/ingredient/chicken_egg

#foods
execute if data entity @s {Item:{id:"minecraft:bread"}} at @s run function dan.reap:item_handling/item_init/replace/food/baked_bread
execute if data entity @s {Item:{id:"minecraft:cooked_beef"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_beef
execute if data entity @s {Item:{id:"minecraft:cooked_chicken"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_chicken
execute if data entity @s {Item:{id:"minecraft:egg"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_chicken_egg
execute if data entity @s {Item:{id:"minecraft:cooked_cod"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_cod
execute if data entity @s {Item:{id:"minecraft:cooked_porkchop"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_ham
execute if data entity @s {Item:{id:"minecraft:cooked_mutton"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_mutton
execute if data entity @s {Item:{id:"minecraft:cooked_salmon"}} at @s run function dan.reap:item_handling/item_init/replace/food/cooked_salmon
execute if data entity @s {Item:{id:"minecraft:apple"}} at @s run function dan.reap:item_handling/item_init/replace/food/red_apple

#kill old item
kill @s