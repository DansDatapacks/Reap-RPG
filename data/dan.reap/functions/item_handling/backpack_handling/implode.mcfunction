# Triggered when open backpack is put in itself
kill @s
playsound entity.generic.explode master @a ~ ~ ~ 2 2
particle explosion_emitter ~ ~ ~ 0 0 0 1 2
kill @e[type=item,distance=..10,nbt={Item:{tag:{dan_reap:{opened:1b}}}}]
loot spawn ~ ~ ~ loot dan.reap:tool/backpack