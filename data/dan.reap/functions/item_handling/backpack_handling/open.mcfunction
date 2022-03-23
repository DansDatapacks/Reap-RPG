# If was already holding a backpack, clean up that one first
execute if entity @s[tag=dan_reap.has_backpack_open] run function dan.reap:item_handling/backpack_handling/try_close

tag @s add dan_reap.has_backpack_open
playsound item.armor.equip_leather master @a

# Create minecart chest, assign ID, set contents
execute at @s run summon chest_minecart ~ ~1.5 ~ {Tags:["dan_reap.new_temp","dan_reap.backpack_minecart","global.ignore"],NoGravity:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},CustomName:'"Backpack"',Silent:1b}
scoreboard players operation @e[type=chest_minecart,tag=dan_reap.new_temp,limit=1] dan.ID = @s dan.ID
data modify entity @e[type=chest_minecart,tag=dan_reap.new_temp,limit=1] Items set from entity @s SelectedItem.tag.dan_reap.backpack_items
tag @e[type=chest_minecart,tag=dan_reap.new_temp,limit=1] remove dan_reap.new_temp

# Set Backpack to Open
function phi.modifyinv:setup/mainhand
data modify block -30000000 0 1602 Items[0].tag.dan_reap.opened set value 1b
function phi.modifyinv:apply/mainhand

# Keep track of selected slot, to return backpack to
execute store result score @s dan.bkpslot run data get entity @s SelectedItemSlot