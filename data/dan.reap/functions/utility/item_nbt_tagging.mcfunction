# detect item entity nbt

#detect if has reap_id
execute if data entity @s Item.tag.reap_id run tag @s add dan.nbt_valid

#detect if item was thrown
execute if data entity @s Thrower run tag @s add dan.itemThrown

#rarity
execute if data entity @s {Item:{tag:{rarity:"common"}}} run tag @s add dan.common
execute if data entity @s {Item:{tag:{rarity:"uncommon"}}} run tag @s add dan.uncommon
execute if data entity @s {Item:{tag:{rarity:"rare"}}} run tag @s add dan.rare
execute if data entity @s {Item:{tag:{rarity:"fabled"}}} run tag @s add dan.fabled
execute if data entity @s {Item:{tag:{rarity:"mythical"}}} run tag @s add dan.mythical

#loot item
execute if data entity @s {Item:{tag:{loot:"true"}}} run tag @s add dan.nbt_loot

#modifiable item
execute if data entity @s {Item:{tag:{modifiable:"true"}}} run tag @s add dan.nbt_modifiable

#stat affected item
execute if data entity @s {Item:{tag:{stat_item:"true"}}} run tag @s add dan.nbt_stat_item
execute if data entity @s {Item:{tag:{stat_set:"true"}}} run tag @s add dan.stat_init

#modified
execute if data entity @s {Item:{tag:{loot_modified:"true"}}} run tag @s add dan.nbt_modified

#soulbound
execute if data entity @s {Item:{tag:{soulbound:"true"}}} run tag @s add dan.nbt_soulbound

#loot chest
execute if data entity @s {Item:{tag:{reap_id:"loot_chest"}}} run tag @s add dan.nbt_loot_chest

#stick
execute if data entity @s {Item:{id:"minecraft:stick"}} run tag @s add dan.nbt_stick

#flint
execute if data entity @s {Item:{id:"minecraft:flint"}} run tag @s add dan.nbt_flint

#detect bomb item
execute if data entity @s {Item:{tag:{bomb:"true"}}} run tag @s add dan.nbt_bomb
execute if data entity @s {Item:{tag:{reap_id:"mini_smoke_tnt"}}} run tag @s add dan.nbt_bomb_smoke
execute if data entity @s {Item:{tag:{reap_id:"mini_tnt"}}} run tag @s add dan.nbt_bomb_tnt

#spawnitem
execute if data entity @s {Item:{tag:{EntityTag:{Tags:["dan.summonButterfly"]}}}} run tag @s add dan.spawnitemButterfly